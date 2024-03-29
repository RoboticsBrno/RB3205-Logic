# Status bar

Status bar is the top row of 5 LEDs marked as A-E.

- **`#!cpp void setState(int state)`** : Set progress
- **`#!cpp int state()`** : Return current state
- **`#!cpp void setColor(Rgb color)`** : Set the color of status bar
- **`#!cpp Rgb color()`** : Return current color of status bar
- **`#!cpp void show(int intensity = 255)`** : Show current frame/state
- **`#!cpp void clear()`** : Clear the display
- **`#!cpp Rgb& at(int x)`** : Return pixel at given position

## Example

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
