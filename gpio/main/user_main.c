/* 
Modified gpio example for single input, single output using GPIO2 and GPIO0

Name: Trent Reuben 
I.D.: 816015091
Due Date: 7/10/22

*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"

#include "freertos/semphr.h"

#include "driver/gpio.h"

#include "esp_log.h"
#include "esp_system.h"

static const char *TAG = "main";

#define GPIO_OUTPUT_IO_0    2

#define GPIO_INPUT_IO_0     0

static xQueueHandle gpio_evt_queue = NULL;

static void gpio_isr_handler(void *arg)
{
    uint32_t gpio_num = (uint32_t) arg;
    xQueueSendFromISR(gpio_evt_queue, &gpio_num, NULL);
}

static void gpio_task_example(void *arg)
{
    uint32_t io_num;

    for (;;) {
        if (xQueueReceive(gpio_evt_queue, &io_num, portMAX_DELAY)) {
            ESP_LOGI(TAG, "GPIO[%d] intr, val: %d\n", io_num, gpio_get_level(io_num));
        }
    }
}

void app_main(void)
{
    gpio_config_t io_conf;
    //Set GPIO2 as output with no interrupt 
    //disable interrupt
    io_conf.intr_type = GPIO_INTR_DISABLE;
    //set as output mode
    io_conf.mode = GPIO_MODE_OUTPUT;
    //bit mask of the pins that you want to set, i.e. GPIO2
    io_conf.pin_bit_mask = (1ULL<<GPIO_OUTPUT_IO_0);
    //disable pull-down mode
    io_conf.pull_down_en = 0;
    //disable pull-up mode
    io_conf.pull_up_en = 0;
    //configure GPIO with the given settings
    gpio_config(&io_conf);

    //Set GPIO0 as input with interrupt on falling edge
    //interrupt of rising edge
    io_conf.intr_type = GPIO_INTR_NEGEDGE;
    //bit mask of the pins using GPIO0
    io_conf.pin_bit_mask = (1ULL<<GPIO_INPUT_IO_0);
    //set as input mode
    io_conf.mode = GPIO_MODE_INPUT;
    //enable pull-up mode
    io_conf.pull_up_en = 1;
    gpio_config(&io_conf);

    //change gpio intrrupt type for one pin
    gpio_set_intr_type(GPIO_INPUT_IO_0, GPIO_INTR_NEGEDGE);

    //create a queue to handle gpio event from isr
    gpio_evt_queue = xQueueCreate(10, sizeof(uint32_t));
    //start gpio task
    xTaskCreate(gpio_task_example, "gpio_task_example", 2048, NULL, 10, NULL);

    //install gpio isr service
    gpio_install_isr_service(0);
    //hook isr handler for specific gpio pin
    gpio_isr_handler_add(GPIO_INPUT_IO_0, gpio_isr_handler, (void *) GPIO_INPUT_IO_0);

    int cnt = 0;

    while (1) {
        ESP_LOGI(TAG, "cnt: %d\n", cnt++); //count each cycle
        vTaskDelay(1000 / portTICK_RATE_MS); // 1 second delay 
        gpio_set_level(GPIO_OUTPUT_IO_0, cnt % 2);
    }
}


