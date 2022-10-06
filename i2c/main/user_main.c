#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"

#include "esp_log.h"
#include "esp_system.h"
#include "esp_err.h"

#include "driver/i2c.h"



#define I2C_EXAMPLE_MASTER_SCL_IO           2               /*!< gpio number for I2C master clock */
#define I2C_EXAMPLE_MASTER_SDA_IO           0               /*!< gpio number for I2C master data  */
#define I2C_EXAMPLE_MASTER_NUM              I2C_NUM_0        /*!< I2C port number for master dev */
#define I2C_EXAMPLE_MASTER_TX_BUF_DISABLE   0                /*!< I2C master do not need buffer */
#define I2C_EXAMPLE_MASTER_RX_BUF_DISABLE   0                /*!< I2C master do not need buffer */

#define WRITE_BIT                           I2C_MASTER_WRITE /*!< I2C master write */
#define READ_BIT                            I2C_MASTER_READ  /*!< I2C master read */
#define ACK_CHECK_EN                        0x1              /*!< I2C master will check ack from slave*/
#define ACK_CHECK_DIS                       0x0              /*!< I2C master will not check ack from slave */
#define ACK_VAL                             0x0              /*!< I2C ack value */
#define NACK_VAL                            0x1              /*!< I2C nack value */
#define LAST_NACK_VAL                       0x2              /*!< I2C last_nack value */

#define ADDR_1115_GND                       0x48            //datasheet TABLE 5
#define ADDR_1115_VDD                       0x49
#define ADDR_1115_SDA                       0x4A
#define ADDR_1115_SCL                       0x4B

#define ADS1115_CONV                        0x00            //datasheet TABLE 6
#define ADS_1115_CONFIG                     0x01
#define ADS_1115_LOWTHRESH                  0x02
#define ADS_1115_HIGHTHRES                  0x03

/**
 * @brief i2c master initialization
 */

static esp_err_t i2c_example_master_init()
{
    int i2c_master_port = I2C_EXAMPLE_MASTER_NUM;
    i2c_config_t conf;
    conf.mode = I2C_MODE_MASTER;
    conf.sda_io_num = I2C_EXAMPLE_MASTER_SDA_IO;
    conf.sda_pullup_en = 1;
    conf.scl_io_num = I2C_EXAMPLE_MASTER_SCL_IO;
    conf.scl_pullup_en = 1;
    conf.clk_stretch_tick = 300; // 300 ticks, Clock stretch is about 210us, you can make changes according to the actual situation.
    ESP_ERROR_CHECK(i2c_driver_install(i2c_master_port, conf.mode));
    ESP_ERROR_CHECK(i2c_param_config(i2c_master_port, &conf));
    return ESP_OK;
}

static esp_err_t i2c_master_write_1115(i2c_port_t i2c_num, uint8_t reg_address, uint16_t *data, uint16_t data_len)
{
    uint8_t write_buffer[2]; //2 unsigned int 8 variable (16-bit number)
    write_buffer[0] = (*data >> 8) & 0xFF;
    write_buffer[1] = (*data >> 0) & 0xFF;
    esp_err_t ret;
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, ADDR_1115_GND << 1 | WRITE_BIT, ACK_CHECK_EN);
    i2c_master_write_byte(cmd, reg_address, ACK_CHECK_EN);
    i2c_master_write(cmd, write_buffer, data_len, ACK_CHECK_EN);
    i2c_master_stop(cmd);
    ret = i2c_master_cmd_begin(i2c_num, cmd, 1000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);
    return ret;
}

static esp_err_t i2c_master_read_1115(i2c_port_t i2c_num, uint8_t reg_address, uint16_t *data, uint16_t data_len)
{

    esp_err_t ret;
    uint16_t read_data = 0;
    uint8_t read_buffer[2];

    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, ADDR_1115_GND << 1 | WRITE_BIT, ACK_CHECK_EN);
    i2c_master_write_byte(cmd, reg_address, ACK_CHECK_EN);
    i2c_master_stop(cmd);
    ret = i2c_master_cmd_begin(i2c_num, cmd, 1000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);

    if (ret != ESP_OK)
    {
        printf("Could not read from ADS1115. \n");
        return ret;
    }

    cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, ADDR_1115_GND << 1 | READ_BIT, ACK_CHECK_EN);
    i2c_master_read(cmd, read_buffer, data_len, LAST_NACK_VAL);
    i2c_master_stop(cmd);
    ret = i2c_master_cmd_begin(i2c_num, cmd, 1000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);
    read_data = (read_buffer[0] << 8) | read_buffer[1];
    *data = read_data;
    return ret;
}

static esp_err_t i2c__master_init_1115(i2c_port_t i2c_num, uint16_t *data)
{
    vTaskDelay(100 / portTICK_RATE_MS);
    i2c_example_master_init();
    ESP_ERROR_CHECK(i2c_master_write_1115(i2c_num, ADS_1115_CONFIG, data,1));
    return ESP_OK;
}

static void i2c_task_example(void *arg)
{
    uint16_t sensor_data = 0;
    uint16_t config_bit = 0x4480; //Table 8 Config Register Field using 0b0100010010000000
    esp_err_t ret;

    ret = i2c__master_init_1115(I2C_EXAMPLE_MASTER_NUM, &config_bit);
    if (ret != ESP_OK)
    {
        printf("An error has occurred with initialisation protocol (ADS1115)");
        i2c_driver_delete(I2C_EXAMPLE_MASTER_NUM);
    } 
    else
    {
        printf("Successfully initialised. \n");
    }

    while(1)
    {
        ret = i2c_master_read_1115(I2C_EXAMPLE_MASTER_NUM,ADS1115_CONV, &sensor_data, 1);
        if(ret==ESP_OK)
        {
            double voltage = (double)sensor_data * 6.25e-5;
            printf("Sensor information: %dV\n ",(int)sensor_data);
            printf("Voltage: %d.%d V.\n",(uint16_t)voltage, (uint16_t)(voltage * 100)%100);
            vTaskDelay(1000 / portTICK_PERIOD_MS);
        }  
        else
        {
            printf("An error has occurred, could not read ADS1115");
            i2c_driver_delete(I2C_EXAMPLE_MASTER_NUM);
        }
    }    
}

void app_main(void)
{
    //start i2c task
    xTaskCreate(i2c_task_example, "i2c_task_example", 2048, NULL, 10, NULL);
}