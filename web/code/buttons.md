# Buttons

## Direct Button Reading

- **`buttons.read(gpio_num_t gpio)`** :

## Button Names
- `Enter`
- `Up`
- `Down`
- `Left`
- `Right`
- `LeftUp`
- `LeftDown`
- `RightUp`
- `RightDown`

## Example Usage

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
# Event-based Button Handling

## buttons.onChange

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

## buttons.onPress

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

## buttons.onRelease

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



