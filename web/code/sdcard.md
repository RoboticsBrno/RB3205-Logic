# SD card

The Logic 2.0 board has an sdcard slot which you can use to store or load data from FAT32-formatted cards.

!!! info

    The 1.x HW revisions do not have SD card slot.

!!! danger "SDMMC is broken"

    On the 2.0 HW revision, the SDMMC mode is broken. You have to use SDSPI protocol to access the SD card. This will be fixed in a [later HW revision](https://github.com/RoboticsBrno/RB3205-Logic/issues/1).

## Pinout

| Pin | SD SPI | {--SD MMC--} |
| --- | ------ | ------------ |
| 11  | MOSI   | {--CMD--}    |
| 12  | SCLK   | {--CLK--}    |
| 13  | MISO   | {--D0--}     |
| 3   | CS     | {--CD--}     |

## Example init code

The SD card has some busy init code, but after that, you may use standard C or C++ functions to access the filesystem, just like on a desktop.

```cpp
#include "Logic.hpp"
#include <iostream>

#include "esp_vfs_fat.h"
#include <dirent.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/unistd.h>

#define EXAMPLE_MAX_CHAR_SIZE 64

static const char* TAG = "example";

#define MOUNT_POINT "/sdcard"

void logicMain() {
    esp_err_t ret;

    // SPI BUS init
    spi_bus_config_t bus_cfg = {};
    bus_cfg.mosi_io_num = GPIO_NUM_11;
    bus_cfg.miso_io_num = GPIO_NUM_13;
    bus_cfg.sclk_io_num = GPIO_NUM_12;
    bus_cfg.quadwp_io_num = -1;
    bus_cfg.quadhd_io_num = -1;
    bus_cfg.max_transfer_sz = 4000;

    ret = spi_bus_initialize(SPI2_HOST, &bus_cfg, SPI_DMA_CH_AUTO);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to initialize bus.");
        vTaskDelay(1000 / portTICK_PERIOD_MS);
        return;
    }

    /// FS options
    esp_vfs_fat_mount_config_t mount_config = {};
    mount_config.max_files = 5;
    mount_config.allocation_unit_size = 16 * 1024;

    sdmmc_card_t* card;
    const char mount_point[] = MOUNT_POINT;
    ESP_LOGI(TAG, "Initializing SD card");

    // SDSPI init
    sdmmc_host_t host = SDSPI_HOST_DEFAULT();
    host.slot = SPI2_HOST;

    sdspi_device_config_t dev_cfg = SDSPI_DEVICE_CONFIG_DEFAULT();
    dev_cfg.gpio_cs = GPIO_NUM_3;

    ESP_LOGI(TAG, "Mounting filesystem");
    ret = esp_vfs_fat_sdspi_mount(mount_point, &host, &dev_cfg, &mount_config, &card);

    if (ret != ESP_OK) {
        if (ret == ESP_FAIL) {
            ESP_LOGE(TAG, "Failed to mount filesystem. "
                          "If you want the card to be formatted, set the EXAMPLE_FORMAT_IF_MOUNT_FAILED menuconfig option.");
        } else {
            ESP_LOGE(TAG, "Failed to initialize the card (%s). "
                          "Make sure SD card lines have pull-up resistors in place.",
                esp_err_to_name(ret));
        }
        return;
    }
    ESP_LOGI(TAG, "Filesystem mounted");

    // List root directory
    DIR* dir = opendir(mount_point);
    struct dirent* ent;
    while ((ent = readdir(dir)) != NULL) {
        printf("File %s %d\n", ent->d_name, ent->d_type);
    }
    closedir(dir);

    while (true) {
        delay(100);
    }
}

```
