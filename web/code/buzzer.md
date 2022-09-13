
# Buzzer

- **`bool isOn()`** :
- **`void on()`** :
- **`void off()`** :

## Example usage

```cpp
#include "Logic.hpp"
#include <iostream>

void logicMain() {
    while (true) {
        if(buttons.read(Enter)) {
            buzzer.on();
        } else
        {
            buzzer.off();
        }
    }

}
```
