# Buzzer

## Example usage

### "Logic v2.*"
- **`#!cpp bool isOn()`** :
- **`#!cpp void on()`** :
- **`#!cpp void off()`** :
- **`#!cpp void setFrequency(std::uint32_t frequency)`** :
    - This function sets the frequency of the buzzer. The frequency is in Hz.

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

### "Logic v1.*"
- **`#!cpp bool isOn()`** :
- **`#!cpp void on()`** :
- **`#!cpp void off()`** :

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
