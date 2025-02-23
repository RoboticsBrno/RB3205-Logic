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

## buttons.priZmene (buttons.onChange)

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

## buttons.priStisku (buttons.onPress)

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

## buttons.priUvolneni (.onRelease)

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
