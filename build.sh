set -eux

arm-none-eabi-as -g header.s -o header.o
arm-none-eabi-as -g main.s -o main.o
arm-none-eabi-ld -T main.lds header.o main.o -o main.elf
arm-none-eabi-objcopy -O binary main.elf main.nds

python patch.py main.nds
