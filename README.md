# Eclipse Oxygen CDT Bug demo

This repository contains simple project for Eclipse Oxygen CDT bug https://bugs.eclipse.org/bugs/show_bug.cgi?id=519171.

## Requirements
 * CMake >= 3.7.1 (probably will work with older version)
 * arm-none-eabi-gcc toolchain (Can be updated for other makefile - compatibile toolchain)

## Usage
 1. Clone repo to `<work>\src` folder
 2. Create `<work>\build` folder
 3. Go to `<work>\build` and execute command `cmake -G "Eclipse CDT4 - MinGW Makefiles" ..\src` (on Windows, for other OS it must be adapted)
 4. Import generated project into Eclipse Oxygen (Import -> Existing project into workspace)

## Behavior

### Actual

In file `libs/settings/name.cpp` all names are resolved correctly:

![Name resolved correctly](https://raw.githubusercontent.com/Novakov/eclipse-cdt-bug/master/images/oxygen_settings_ok.png)

In file 'libs/verifier/name.cpp' names are not resolved correctly:

![Name not resolved](https://raw.githubusercontent.com/Novakov/eclipse-cdt-bug/master/images/oxygen_verifier_fail.png)

### Expected (Eclipse Neon.3)
In file `libs/settings/name.cpp` names are resolved correctly:

![Name resolved correctly](https://raw.githubusercontent.com/Novakov/eclipse-cdt-bug/master/images/neon_settings_ok.png)

In file 'libs/verifier/name.cpp' names are resolved correctly:

![Name resolved correctly](https://raw.githubusercontent.com/Novakov/eclipse-cdt-bug/master/images/neon_verifier_ok.png)
