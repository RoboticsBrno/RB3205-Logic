# Příklady dokumentace


!!! Pozor
	Popisek výrazný

	``` python linenums="1"
	def bubble_sort(items):
		for i in range(len(items)):
			for j in range(len(items) - 1 - i):
				if items[j] > items[j + 1]:
					items[j], items[j + 1] = items[j + 1], items[j]
	```


``` cpp hl_lines="4-8 15"
#include <stdio.h>
#include <stdlib.h>

void ukol3()
{
	const int poc = 5;
	int pole[poc];

	nactiPole(pole, poc);
	vypisPole(pole, poc);
	sectiPole(pole, poc);
}


int main(int argc, char *argv[])
{
	ukol3();
	return 0;
}
```

## Zatržítka

- [x] Lorem ipsum dolor sit amet, consectetur adipiscing elit
- [ ] Vestibulum convallis sit amet nisi a tincidunt
    * [x] In hac habitasse platea dictumst
    * [x] In scelerisque nibh non dolor mollis congue sed et metus
    * [ ] Praesent sed risus massa
- [ ] Aenean pretium efficitur erat, donec pharetra, ligula non scelerisque




## Bloky výběru

# Užitečné funkce

=== "CZ"
	- **``** : 
=== "EN"
	- **``** : 


!!! info inline end
    Poznámka!!! dolor sit amet, consectetur
    adipiscing elit. Nulla et euismod nulla.
    Curabitur feugiat, tortor non consequat
    finibus, justo purus auctor massa, nec
    semper lorem quam in massa.

=== "C"

    ``` c
    #include <stdio.h>

    int main(void) {
      printf("Hello world!\n");
      return 0;
    }
    ```

=== "C++"

    ``` c++
    #include <iostream>

    int main(void) {
      std::cout << "Hello world!" << std::endl;
      return 0;
    }
    ```
## Klávesy

++ctrl+alt+del++

## Schovaný bloky

??? note
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.
	

## pozor

!!! bug inline end
    Pozor bug!!! dolor sit amet, consectetur
    adipiscing elit. Nulla et euismod nulla.
    Curabitur feugiat, tortor non consequat
    finibus, justo purus auctor massa, nec
    semper lorem quam in massa.
