# Arduino Library base folder and PROJECT structure
PROJECTS_BASE = src
PROJECT ?= blink

# Arduino CLI executable name and directory location
ARDUINO_CLI = arduino-cli

# Arduino CLI Board type
FQBN ?= esp8266:esp8266:nodemcuv2:baud=921600

# Default port to upload to
PORT ?= /dev/ttyUSB0

# Optional verbose compile/upload trigger
V ?= 0
VERBOSE=

ifneq ($(V), 0)
    VERBOSE=-v
endif

# Optional clean when compiling
CLEAN ?= 0
CLEAN_ARG=
ifneq ($(CLEAN), 0)
	CLEAN_ARG=--clean
endif

all: compile

compile:
	$(ARDUINO_CLI) compile $(VERBOSE) $(CLEAN_ARG) --fqbn $(FQBN) $(PROJECTS_BASE)/$(PROJECT)

upload:
	$(ARDUINO_CLI) upload $(VERBOSE) --port $(PORT) --fqbn $(FQBN) $(PROJECTS_BASE)/$(PROJECT)