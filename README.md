# Bootloader for Ender 3

### Motivation
I recently bought my first 3D printer: Ender 3.
During first printing of [Benchy](https://www.3dbenchy.com/) printer resets,
so I thought I would like to update the software to newer version (the factory one was from 2021).
I chose the software for the STM32103 chip, because at that time I didn't know that my model had a GD32303 chip.
In that way I crash my printer completely.

I opened the case and connected with ST-Link to the motherboard.
Using SWD, I accidentally uploaded new firmware to the beginning of the memory (address 0x08000000) and thus overwriting the factory bootloader,
like in this [situation described on reddit](https://www.reddit.com/r/ender3/comments/11bqcm9/bricked_ender_3_v2_422_stm32/).

I've been looking for a bootloader for Ender all day on the Internet without success.
My friend show me this [repo](https://github.com/GadgetAngel/BTT_SKR_13_14_14T_SD-DFU-Bootloader) containing bootloaders for upgraded motherboards for varius 3D printers.
Using one of them I managed to successfully run my printer again (without firmware update via SD card), but limit switch for Y axis had to be pressed (I don't know why).
