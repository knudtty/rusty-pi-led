.PHONY: build clean all

build:
	cargo rustc -- -C link-arg=--script=./linker.ld
	mkdir -p build
	arm-none-eabi-objcopy -O binary target/armv7a-none-eabi/debug/rusty-pi-led ./build/kernel7.img

clean: 
	rm -rf target/

all: clean build
