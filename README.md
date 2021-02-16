# VSCode Arduino CLI Starter

Starter project for using [arduino-cli](https://github.com/arduino/arduino-cli) with visual studio code. 

Based on the configuration by [Sparkfun](https://learn.sparkfun.com/tutorials/efficient-arduino-programming-with-arduino-cli-and-visual-studio-code/all).

## Installation

### esp8266

```sh
arduino-cli core update-index --additional-urls=http://arduino.esp8266.com/stable/package_esp8266com_index.json
arduino-cli core search esp8266 --additional-urls=http://arduino.esp8266.com/stable/package_esp8266com_index.json
arduino-cli core install esp8266:esp8266 --additional-urls=http://arduino.esp8266.com/stable/package_esp8266com_index.json
```

### Make
[Make](https://www.gnu.org/software/make/) will need to be installed (For [Windows](http://gnuwin32.sourceforge.net/packages/make.htm))

### Arduino CLI
First install the [arduino-cli](https://arduino.github.io/arduino-cli/latest/installation/).

After attaching your board, check to see that your [board](https://arduino.github.io/arduino-cli/commands/arduino-cli_board_list/) is connected, and take note of the serial port.

Then find your [FQBN](https://arduino.github.io/arduino-cli/FAQ/)

## Commands

### Compiling

[VSCode task](.vscode/tasks.json#L50)

```sh
make compile V=1 CLEAN=1 FQBN=esp8266:esp8266:nodemcuv2:baud=921600 PROJECT=blink
```

### Uploading

[VSCode task](.vscode/tasks.json#L59)

```sh
make upload V=1 PORT=/dev/ttyUSB0 FQBN=esp8266:esp8266:nodemcuv2:baud=921600 PROJECT=blink
```

