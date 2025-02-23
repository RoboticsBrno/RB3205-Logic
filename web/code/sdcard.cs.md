# SD karta

Deska Logic v2 je vybavena slotem pro SD kartu, který můžete použít ke čtení nebo zápisu dat na kartu s FAT32 formátem.

!!! info

    HW revize 1.x nemají slot na SD kartu.

!!! danger "SDMMC je nefunkční"

    U HW revize 2.0 je režim SDMMC nefunkční. K přístupu na SD kartu je nutné použít protokol SDSPI. Tato chyba bude opravena v [pozdější HW revizi](https://github.com/RoboticsBrno/RB3205-Logic/issues/1).

## Zapojení pinů

| Pin | SD SPI | {--SD MMC--} |
| --- | ------ | ------------ |
| 11  | MOSI   | {--CMD--}    |
| 12  | SCLK   | {--CLK--}    |
| 13  | MISO   | {--D0--}     |
| 3   | CS     | {--CD--}     |

## Ukázkový inicializační kód

Pro SD kartu je zapotřebí delší kód pro inicializaci, ale poté můžete používat standardní funkce jazyka C nebo C++ pro přístup k souborovému systému, podobně jako na běžném počítači.

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

    // Inicializace SPI sběrnice
    spi_bus_config_t bus_cfg = {};
    bus_cfg.mosi_io_num = GPIO_NUM_11;
    bus_cfg.miso_io_num = GPIO_NUM_13;
    bus_cfg.sclk_io_num = GPIO_NUM_12;
    bus_cfg.quadwp_io_num = -1;
    bus_cfg.quadhd_io_num = -1;
    bus_cfg.max_transfer_sz = 4000;

    ret = spi_bus_initialize(SPI2_HOST, &bus_cfg, SPI_DMA_CH_AUTO);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Nepodařilo se inicializovat sběrnici.");
        vTaskDelay(1000 / portTICK_PERIOD_MS);
        return;
    }

    /// Možnosti pro souborový systém
    esp_vfs_fat_mount_config_t mount_config = {};
    mount_config.max_files = 5;
    mount_config.allocation_unit_size = 16 * 1024;

    sdmmc_card_t* card;
    const char mount_point[] = MOUNT_POINT;
    ESP_LOGI(TAG, "Inicializace SD karty");

    // Inicializace SDSPI
    sdmmc_host_t host = SDSPI_HOST_DEFAULT();
    host.slot = SPI2_HOST;

    sdspi_device_config_t dev_cfg = SDSPI_DEVICE_CONFIG_DEFAULT();
    dev_cfg.gpio_cs = GPIO_NUM_3;

    ESP_LOGI(TAG, "Připojování souborového systému");
    ret = esp_vfs_fat_sdspi_mount(mount_point, &host, &dev_cfg, &mount_config, &card);

    if (ret != ESP_OK) {
        if (ret == ESP_FAIL) {
            ESP_LOGE(TAG, "Nepodařilo se připojit souborový systém. "
                          "Pokud chcete kartu naformátovat, aktivujte volbu EXAMPLE_FORMAT_IF_MOUNT_FAILED v menuconfig.");
        } else {
            ESP_LOGE(TAG, "Nepodařilo se inicializovat kartu (%s). "
                          "Ujistěte se, že linky SD karty mají zapojené pull-up rezistory.",
                esp_err_to_name(ret));
        }
        return;
    }
    ESP_LOGI(TAG, "Souborový systém byl připojen");

    // Vypsání obsahu kořenového adresáře
    DIR* dir = opendir(mount_point);
    struct dirent* ent;
    while ((ent = readdir(dir)) != NULL) {
        printf("Soubor %s %d\n", ent->d_name, ent->d_type);
    }
    closedir(dir);

    while (true) {
        delay(100);
    }
}
```

