# Displej

- **`Rgb& pozice(int x, int y)`** (**`Rgb& at()`**):	Vrátí pixel na dané pozici

- **`void nastavBarvu(int x, int y, Rgb color)`** (**`void setColor()`**):	Nastaví barvu pixelu na dané pozici

- **`void vycisti()`** (**`void clear()`**): Vyčistí celý displej

- **`void vypln(Rgb barva)`** (**`void fill()`**):	Vyplň celý displej barvou

- **`void nakresliObdelnik(int x, int y, int sirka, int vyska, Rgb barva, int tloustkaCary = 1)`** (**`void drawRectangle()`**): Nakreslí obdélník se zadanými parametry

- **`void nakresliObdelnik(const Obdelnik& obdelnik, Rgb barva, int tloustkaCary = 1)`** (**`void drawRectangle()`**):	Nakreslí obdélník se zadanými parametry

- **`void nakresliObdelnikVyplneny(int x, int y, int sirka, int vyska, Rgb barva)`** (**`void drawRectangleFilled()`**):	Nakreslí vyplněný obdélník se zadanými parametry

- **`void nakresliObdelnikVyplneny(const Obdelnik& obdelnik, Rgb barva)`** (**`void drawRectangleFilled()`**): Nakreslí vyplněný obdélník se zadanými parametry

- **`void nakresliCtverec(int x, int y, int strana, Rgb barva, int tlouskaCary = 1)`** (**`void drawSquare()`**): Nakreslí čtverec se zadanými parametry

- **`void nakresliCtverecVyplneny(int x, int y, int strana, Rgb barva)`** (**`void drawSquareFilled()`**):	Nakreslí čtverec se zadanými parametry

- **`void nakresliKruznici(int stredX, int stredY, int polomer, Rgb barva)`** (**`void drawCircle()`**):	Nakreslí kružnici s danými parametry

- **`void nakresliKruzniciVyplnenou(int stredX, int stredY, int polomer, Rgb barva)`** (**`void drawCircleFilled()`**): Nakreslí vyplněnou kružnici (kruh) s danými parametry

- **`void nakresliCaru(int x1, int y1, int x2, int y2, Rgb barva, int tloustkaCary = 1)`** (**`void drawLine()`**): Nakreslí čáru

- **`void ukaz(int intenzita = 255)`** (**`void show()`**): Vykresli připravený snímek na displeji

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

