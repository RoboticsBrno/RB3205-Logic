
# Bzučák

=== "CZ"
	- **`bool jeZapnuty()`** : 
	- **`void zapnout()`** : 
	- **`void vypnout()`** : 
=== "EN"
	- **`bool isOn()`** :	
	- **`void on()`** :	
	- **`void off()`** :	

## Příklad použití	

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