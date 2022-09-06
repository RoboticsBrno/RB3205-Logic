# Užitečné funkce

## Časové funkce

=== "CZ"
	- **`void delay(uint32_t ms)`** : Čeká po specifikovaný počet milisekund
	- **`void cekejVteriny(float vteriny)`** : Čeká po specifikovaný počet vteřin
	- **`float vteriny()`** : Vrátí počet vteřin od začátku programu
	- **`uint32_t millis()`** : Vrátí počet milisekund od začátku programu
=== "EN"
	- **`void delay(uint32_t ms)`** : Wait for specified amount of milliseconds
	
	- **`void waitSeconds(float seconds)`** : Wait for specified amount of seconds
	- **`uint32_t millis()`** : Returns time since boot in milliseconds
	- **`float seconds()`** : Returns time since boot in seconds

## Náhodná čísla

=== "CZ"
	- **`long nahodne(long maximum)`** : Vrátí náhodné číslo od 0 do maximum
	- **`long nahodne(long minimum, long maximum)`** : Vrátí náhodné číslo od minima do maximum 
=== "EN"
	- **`long random(long max)`** : Get random number from 0 to max
	- **`long random(long min, long max)`** : Get random number from min to max

## Automatické formátování

Na Windows ++shift+alt+f++

Na Linuxu ++ctrl+shift+i++