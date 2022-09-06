# Tlačítka

## Přímé čtení tlačítek

- **`buttons.read(gpio_num_t gpio)`** : 

## Názvy tlačítek
- `Enter`
- `Up`
- `Down`
- `Left`
- `Right`
- `LeftUp`
- `LeftDown`
- `RightUp`
- `RightDown`

## Příklad použití

```cpp
#include "Logic.hpp"
#include <iostream>

void logicMain() {
    while (true) {
        display.clear();

        if(buttons.read(Enter)) {
            display.drawSquareFilled(3, 3, 4, Rgb(255, 255, 255));    
        }
        else if(buttons.read(Right)) {
            display.drawSquareFilled(6, 3, 4, Rgb(255, 255, 255));
        }
        else if(buttons.read(Down)) {
            display.drawSquareFilled(3, 6, 4, Rgb(255, 255, 255));
        }
        else if(buttons.read(Left)) {
            display.drawSquareFilled(0, 3, 4, Rgb(255, 255, 255));
        }
        else if(buttons.read(Up)) {
            display.drawSquareFilled(3, 0, 4, Rgb(255, 255, 255));
        }
        display.show(30);
    }
}
```
# Registrace událostí na tlačítka
## buttons.priZmene / buttons.onChange

=== "CZ"
	```cpp
	buttons.priZmene([](std::bitset<MaxID> aktualniStav, std::bitset<MaxID> zmenenaTlacitka) {
		if (zmenenaTlacitka[Up] == 1) {

			std::cout << "Tlačítko Nahoru se změnilo a teď je ";

			if (aktualniStav[Up] == 1) {
				std::cout << "zmáčknuté." << std::endl;
			} else {
				std::cout << "puštěné." << std::endl;
			}
		}
	});

	buttons.priZmene([](std::bitset<MaxID> aktualniStav) {
		std::cout << "Tlačítko Nahoru je nyní ";

		if (aktualniStav[Up] == 1) {
			std::cout << "zmáčknuté." << std::endl;
		} else {
			std::cout << "puštěné." << std::endl;
		}
	});

	buttons.priZmene([]() {
		std::cout << "Tlačítko bylo změněno. Není k dispozici více informací." << std::endl;
	});

	buttons.priZmene([](std::bitset<MaxID> aktualniStav, std::bitset<MaxID> zmenenaTlacitka) {
		std::cout << "Tohle uvidíte pouze pokud se změní tlačítko Dolů, a toto tlačítko je nyní ";

		if (aktualniStav[Down] == 1) {
			std::cout << "zmáčknuté." << std::endl;
		} else {
			std::cout << "puštěné." << std::endl;
		}
	}, Down);

	buttons.priZmene([](bool isPressed) {
		std::cout << "Tohle uvidíte pouze pokud se změní tlačítko Dolů" << std::endl;

		if (isPressed == 1) {
			std::cout << "zmáčknuté." << std::endl;
		} else {
			std::cout << "puštěné." << std::endl;
		}
	}, Down);


	buttons.onChange([]() {
		std::cout << "Tohle uvidíte pouze pokud se změní tlačítko Dolů" << std::endl;
	}, Down);
	```
=== "EN"
	```cpp
	buttons.onChange([](std::bitset<MaxID> currentState, std::bitset<MaxID> buttonChange) {
		if (buttonChange[up] == 1) {

			std::cout << "Button Up has changed and is now ";

			if (currentState[Up] == 1) {
				std::cout << "pressed." << std::endl;
			} else {
				std::cout << "released." << std::endl;
			}
		}
	});

	buttons.onChange([](std::bitset<MaxID> currentState) {
		std::cout << "Button Up is now ";

		if (currentState[Up] == 1) {
			std::cout << "pressed." << std::endl;
		} else {
			std::cout << "released." << std::endl;
		}
	});

	buttons.onChange([]() {
			std::cout << "A button has changed. No more information available" << std::endl;
		});

	buttons.onChange([](std::bitset<MaxID> currentState, std::bitset<MaxID> buttonChange) {
		std::cout << "You will see this only when Button Down changes, and the button is now ";

		if (currentState[Down] == 1) {
			std::cout << "pressed." << std::endl;
		} else {
			std::cout << "released." << std::endl;
		}
	}, Down);

	buttons.onChange([](bool isPressed) {
		std::cout << "You will see this only when Button Down changes" << std::endl;

		if (isPressed == 1) {
			std::cout << "pressed." << std::endl;
		} else {
			std::cout << "released." << std::endl;
		}
	}, Down);


	buttons.onChange([]() {
		std::cout << "You will see this only when Button Down changes" << std::endl;
	}, Down);
	```

## buttons.priStisku / buttons.onPress

=== "CZ"
	```cpp
	buttons.priStisku([](std::bitset<MaxID> aktualniStav, std::bitset<MaxID> zmena) {
		std::cout << "Nějaké tlačítko bylo zmáčknuto. ";

		if (zmena[Right] == 1) {
			std::cout << "Bylo to tlačítko Vpravo" << std::endl;
		} else {
			std::cout << "Nebylo to tlačítko Vpravo" << std::endl;
		}
	});

	buttons.priStisku([](std::bitset<MaxID> aktualniStav) {
		std::cout << "Nějaké tlačítko bylo zmáčknuto. ";

		std::cout << "Tlačítka ";

		for(int i = 0; i < MaxID; i++) {
			if (aktualniStav[i] == 1) {
				std::cout << i << ", ";
			}
		}

		std::cout << "jsou nyní zmáčknutá." << std::endl;
	});

	buttons.priStisku([]() {
		std::cout << "Tlačítko bylo Zmáčknuto. Není k dispozici více informací." << std::endl;
	});

	buttons.priStisku([]() {
		std::cout << "Tohle uvidíte pouze pokud zmáčknete tlačítko Vlevo." << std::endl;
	}, Left);
	```
=== "EN"
	```cpp
	buttons.onPress([](std::bitset<MaxID> currentState, std::bitset<MaxID> changed) {
		std::cout << "A button has been pressed. ";

		if (changed[Right] == 1) {
			std::cout << "It was the Right button" << std::endl;
		} else {
			std::cout << "It was not the Right button" << std::endl;
		}
	});

	buttons.onPress([](std::bitset<MaxID> currentState) {
		std::cout << "A button has been pressed. ";

		std::cout << "Buttons ";

		for(int i = 0; i < MaxID; i++) {
			if (currentState[i] == 1) {
				std::cout << i << ", ";
			}
		}

		std::cout << "are now pressed." << std::endl;
	});

	buttons.onPress([]() {
		std::cout << "A button has been pressed. No more information available" << std::endl;
	});

	buttons.onPress([]() {
		std::cout << "You will see this only when Button Left get pressed down." << std::endl;
	}, Left);
	```

## buttons.priUvolneni / buttons.onRelease

=== "CZ"
	```cpp
	buttons.priUvolneni([](std::bitset<MaxID> aktualniStav, std::bitset<MaxID> zmena) {
		std::cout << "Tlačítko bylo puštěno. ";

		if (zmena[Right] == 1) {
			std::cout << "Bylo to tlačítko Vpravo" << std::endl;
		} else {
			std::cout << "Nebylo to tlačítko Vpravo" << std::endl;
		}
	});

	buttons.priUvolneni([](std::bitset<MaxID> aktualniStav) {
		std::cout << "Tlačítko bylo puštěno. ";

		std::cout << "Tlačítka ";

		for(int i = 0; i < MaxID; i++) {
			if (aktualniStav[i] == 0) {
				std::cout << i << ", ";
			}
		}

		std::cout << "jsou nyní puštěná." << std::endl;
	});

	buttons.priUvolneni([]() {
		std::cout << "Tlačítko bylo uvolněno. Není k dispozici více informací." << std::endl;
	});

	buttons.priUvolneni([]() {
		std::cout << "Tohle uvidíte pouze pokud pustíte tlačítko Vlevo." << std::endl;
	}, Left);
	```
=== "EN"
	```cpp
	buttons.onRelease([](std::bitset<MaxID> currentState, std::bitset<MaxID> changed) {
		std::cout << "A button has been released. ";

		if (changed[Right] == 0) {
			std::cout << "It was the Right button" << std::endl;
		} else {
			std::cout << "It was not the Right button" << std::endl;
		}
	});

	buttons.onRelease([](std::bitset<MaxID> currentState) {
		std::cout << "A button has been released. ";

		std::cout << "Buttons ";

		for(int i = 0; i < MaxID; i++) {
			if (currentState[i] == 0) {
				std::cout << i << ", ";
			}
		}

		std::cout << "are now released." << std::endl;
	});

	buttons.onRelease([]() {
		std::cout << "A button has been released. No more information available" << std::endl;
	});

	buttons.onRelease([]() {
		std::cout << "You will see this only when Button Left gets released." << std::endl;
	}, Left);	
	```



