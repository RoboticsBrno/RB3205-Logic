# Stavový řádek

Stavový řádek je horní řada 5 LED označených jako A-E.

- **`#!cpp void setState(int state)`** : Nastaví „postup“ (stav)
- **`#!cpp int state()`** : Vrátí aktuální stav
- **`#!cpp void setColor(Rgb color)`** : Nastaví barvu stavového řádku
- **`#!cpp Rgb color()`** : Vrátí aktuální barvu stavového řádku
- **`#!cpp void show(int intensity = 255)`** : Zobrazí aktuální stav/„snímek“
- **`#!cpp void clear()`** : Vymaže zobrazení
- **`#!cpp Rgb& at(int x)`** : Vrátí pixel na dané pozici

## Příklad

```cpp
#include "Logic.hpp"
#include <iostream>

void logicMain() {
    while (true) {
        statusBar.setColor(Rgb(255, 0, 0));
        statusBar.setState(4);

        statusBar.show(30);
        delay(3000);
        statusBar.clear();

        statusBar.setColor(Rgb(0, 255, 0));
        statusBar.setState(2);

        statusBar.show(30);
        delay(3000);
        statusBar.clear();

        statusBar.at(4) = Rgb(0, 0, 255);

        statusBar.show(30);
        delay(3000);
        statusBar.clear();

        statusBar.at(0) = Rgb(255, 0, 0);
        statusBar.at(1) = Rgb(0, 255, 0);
        statusBar.at(2) = Rgb(0, 0, 255);

        statusBar.show(30);
        delay(3000);
        statusBar.clear();
    }
}
```

