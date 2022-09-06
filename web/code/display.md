# Displej

=== "CZ"
	- **`Rgb& pozice(int x, int y)`** :	Vrátí pixel na dané pozici

	- **`void nastavBarvu(int x, int y, Rgb color)`** :	Nastaví barvu pixelu na dané pozici

	- **`void vycisti()`** : Vyčistí celý displej

	- **`void vypln(Rgb barva)`** :	Vyplň celý displej barvou

	- **`void nakresliObdelnik(int x, int y, int sirka, int vyska, Rgb barva, int tloustkaCary = 1)`** : Nakreslí obdélník se zadanými parametry

	- **`void nakresliObdelnik(const Obdelnik& obdelnik, Rgb barva, int tloustkaCary = 1)`** :	Nakreslí obdélník se zadanými parametry

	- **`void nakresliObdelnikVyplneny(int x, int y, int sirka, int vyska, Rgb barva)`** :	Nakreslí vyplněný obdélník se zadanými parametry

	- **`void nakresliObdelnikVyplneny(const Obdelnik& obdelnik, Rgb barva)`** : Nakreslí vyplněný obdélník se zadanými parametry	

	- **`void nakresliCtverec(int x, int y, int strana, Rgb barva, int tlouskaCary = 1)`** : Nakreslí čtverec se zadanými parametry	

	- **`void nakresliCtverecVyplneny(int x, int y, int strana, Rgb barva)`** :	Nakreslí čtverec se zadanými parametry

	- **`void nakresliKruznici(int stredX, int stredY, int polomer, Rgb barva)`** :	Nakreslí kružnici s danými parametry

	- **`void nakresliKruzniciVyplnenou(int stredX, int stredY, int polomer, Rgb barva)`** : Nakreslí vyplněnou kružnici (kruh) s danými parametry
		
	- **`void nakresliCaru(int x1, int y1, int x2, int y2, Rgb barva, int tloustkaCary = 1)`** : Nakreslí čáru	

	- **`void ukaz(int intenzita = 255)`** : Vykresli připravený snímek na displeji	


=== "EN"
	- **`Rgb& at(int x, int y)`** :	Returns reference to pixel on that position

	- **`void setColor(int x, int y, Rgb color)`** : Set the color of pixel at specified position

	- **`void clear()`** :	Clear the display

	- **`void fill(Rgb color)`** :	Fill the display with color

	- **`void drawRectangle(int x, int y, int width, int height, Rgb color, int strokeWidth = 1)`** : Draw rectangle with specified parameters

	- **`void drawRectangle(const Rectangle& rect, Rgb color, int strokeWidth = 1)`** :	Draw rectangle with specified parameters

	- **`void drawRectangleFilled(int x, int y, int width, int height, Rgb color)`** :	Draw filled rectangle with specified parameters

	- **`void drawRectangleFilled(const Rectangle& rect, Rgb color)`** : Draw filled rectangle with specified parameters	

	- **`void drawSquare(int x, int y, int size, Rgb color, int strokeWidth = 1)`** : Draw square with specified parameters	

	- **`void drawSquareFilled(int x, int y, int size, Rgb color)`** :	Draw filled square with specified parameters

	- **`void drawCircle(int centerX, int centerY, int radius, Rgb color)`** :	Draw circle with specified parameters

	- **`void drawCircleFilled(int centerX, int centerY, int radius, Rgb color)`** :	

	- **`void drawLine(int x1, int y1, int x2, int y2, Rgb color, int strokeWidth = 1)`** :	Draw line

	- **`void show(int intensity = 255)`** : Show prepared frame on display

## Příklad použití

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