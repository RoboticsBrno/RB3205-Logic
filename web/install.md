# Software Development Kit

## TLDR Version for the Skilled Developers

Logic is powered by the ESP32 microcontroller. We recommend using
[PlatformIO](https://platformio.org/) as the development tool as it can install
toolchain and other dependencies automatically. Also, it nicely integrates into
many existing text editors and IDEs.

We provide a [driver library](https://github.com/RoboticsBrno/Logic_library) for
the board. You can use it in your PlatformIO projects by adding the following line in your `platformio.ini` project file:

```
lib_deps = https://github.com/RoboticsBrno/Logic_library
```

The library provides [several
examples](https://github.com/RoboticsBrno/Logic_library/tree/main/examples),
[project
template](https://github.com/RoboticsBrno/Logic_library/tree/main/examples/_TEMPLATE)
and [documentation](https://roboticsbrno.github.io/Logic_library/). There is also a [quick overview of the whole functionality](code/utils.md).

## Step-by-step guide

If you are a beginner, you might find the following step-by-step tutorial handy.
The tutorial targets primarily Windows users (as you know, everything
development-related is more complicated on this system). You will need to install:

1. Editor [Visual Studio Code](https://code.visualstudio.com/Download)
1. Python
    1. For Windows 8 and higher, you need to download Python from [Windows Store](https://www.microsoft.com/en-us/p/python-39/9p7qfqmjrfp7)
    1. For Windows 7 you will need [Python 3.8.10](https://www.python.org/ftp/python/3.8.10/python-3.8.10-amd64.exe)
2. [Git version control](https://git-scm.com/download/win)
3. USB drivers ([Windows 7](https://www.silabs.com/documents/public/software/CP210x_Windows_Drivers.zip), [Windows 8 and higher](https://www.silabs.com/documents/public/software/CP210x_Universal_Windows_Driver.zip))
4. PlatformIO plugin for Visual Studio Code


## 1. Visual Studio Code
This is the editor you will use for editing programs. [Download it from here
](https://code.visualstudio.com/Download) and install it.

## 2. Python

The computer has to have the Python programming language runtime installed.

#### Windows 8, Windows 10

It is **required that you install Python via Window Store**, otherwise
PlatformIO will not work properly. You can use [direct link to Windows
Store](https://www.microsoft.com/en-us/p/python-39/9p7qfqmjrfp7) to obtain it.

#### Windows 7

[Download Python
3.8](https://www.python.org/ftp/python/3.8.10/python-3.8.10-amd64.exe) (newer
Pythons will not work on Windows 7) and install it. Make sure that "Add to PATH" is
checked during the installation.

## 3. Git

[Download Git](https://git-scm.com/download/win) and install it. All options can
be left on default.


## 4. Logic drivers

Download the drivers:

* [Windows 8, Windows 10](https://www.silabs.com/documents/public/software/CP210x_Universal_Windows_Driver.zip)
* [Windows 7](https://www.silabs.com/documents/public/software/CP210x_Windows_Drivers.zip)

You have to to extract the whole archive and run the file `CP210xVCPInstaller_x64.exe`. Follow the guide.

## 5. Platform.io IDE Extension
Open Visual Studio Code and install platform.io extension:

![VSCode extension](assets/code_01.png)<br>
1. Open VSCode and click the Extensions button on the left panel.
<hr>

![VSCode extension](assets/code_02.png)<br>
2. Install PlatformIO IDE extension.
<hr>

![VSCode extension](assets/code_03.png)<br>
3. Wait until all packages are installed.
<hr>

![VSCode extension](assets/code_04.png)<br>
4. Then also wait for the installation of PlatformIO Core. It can take a while.
<hr>

![VSCode extension](assets/code_05.png)<br>
5. Once everything is completed, proceed with restart.
<hr>

## 6. Finished!

Now you should be ready to start developing your own Logic games! You can start
with [example
projects](https://github.com/RoboticsBrno/Logic_library/tree/main/examples).
Open the examples using _File_ -> _Open Folder_. You can upload the program into
Logic via the small arrow on the blue status bar at the bottom.
