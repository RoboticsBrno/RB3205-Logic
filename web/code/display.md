# Display

- **`#!cpp Rgb& at(int x, int y)`** :	Return a reference to a pixel on that position

- **`#!cpp void setColor(int x, int y, Rgb color)`** : Set the color of a pixel at a specified position

- **`#!cpp void clear()`** :	Clear the display

- **`#!cpp void fill(Rgb color)`** :	Fill the display with color

- **`#!cpp void drawRectangle(int x, int y, int width, int height, Rgb color, int strokeWidth = 1)`** : Draw a rectangle with specified parameters

- **`#!cpp void drawRectangle(const Rectangle& rect, Rgb color, int strokeWidth = 1)`** :	Draw a rectangle with specified parameters

- **`#!cpp void drawRectangleFilled(int x, int y, int width, int height, Rgb color)`** :	Draw a filled rectangle with specified parameters

- **`#!cpp void drawRectangleFilled(const Rectangle& rect, Rgb color)`** : Draw a filled rectangle with specified parameters

- **`#!cpp void drawSquare(int x, int y, int size, Rgb color, int strokeWidth = 1)`** : Draw a square with specified parameters

- **`#!cpp void drawSquareFilled(int x, int y, int size, Rgb color)`** :	Draw a filled square with specified parameters

- **`#!cpp void drawCircle(int centerX, int centerY, int radius, Rgb color)`** :	Draw a circle with specified parameters

- **`#!cpp void drawCircleFilled(int centerX, int centerY, int radius, Rgb color)`** : Draw a filled circle with specified parameters

- **`#!cpp void drawLine(int x1, int y1, int x2, int y2, Rgb color, int strokeWidth = 1)`** :	Draw a line

- **`#!cpp void show(int intensity = 255)`** : Show a prepared frame on the display

## Example

```cpp
#include "Logic.hpp"
#include <iostream>

void logicMain() {
    while (true)
    {
        display.fill(Rgb(255, 0, 0)); //red

        display.show(30);
        delay(3000);
        display.clear();

        display.drawLine(1, 0, 8, 0, Rgb(255, 0, 0)); // red
        display.drawLine(0, 1, 8, 9, Rgb(0, 255, 0)); // green

        display.show(30);
        delay(3000);
        display.clear();

        display.drawRectangle(0, 1, 8, 4, Rgb(255, 0, 0)); // red
        display.drawRectangle(4, 3, 6, 5, Rgb(0, 255, 0)); // green

        display.show(30);
        delay(3000);
        display.clear();

        display.drawRectangleFilled(0, 1, 8, 4, Rgb(255, 0, 0)); // red
        display.drawRectangleFilled(4, 3, 6, 5, Rgb(0, 255, 0)); // green

        display.show(30);
        delay(3000);
        display.clear();

        display.drawCircle(3, 3, 2, Rgb(255, 0, 0)); // red
        display.drawCircle(6, 7, 3, Rgb(0, 255, 0)); // green

        display.show(30);
        delay(3000);
        display.clear();

        display.drawCircleFilled(3, 3, 2, Rgb(255, 0, 0)); // red
        display.drawCircleFilled(6, 7, 3, Rgb(0, 255, 0)); // green

        display.show(30);
        delay(3000);
        display.clear();

        display.drawSquare(1, 1, 3, Rgb(255, 0, 0)); //red
        display.drawSquare(4, 5, 4, Rgb(0, 255, 0)); // green

        display.show(30);
        delay(3000);
        display.clear();

        display.drawSquareFilled(1, 1, 3, Rgb(255, 0, 0)); //red
        display.drawSquareFilled(4, 5, 4, Rgb(0, 255, 0)); // green

        display.show(30);
        delay(3000);
        display.clear();

        display.at(0, 0) = Rgb(255, 0, 0); // red
        display.at(4, 7) = Rgb(0, 255, 0); // green
    }
}
```
