# KawaiiOS 
[![Build Status](https://travis-ci.com/nemoload/KawaiiOS.svg?branch=master)](https://travis-ci.com/nemoload/KawaiiOS)

## What is KawaiiOS?
KwaiiOS is a hobbyist 32-bit operating system. for educational purposes. It aims to to be a UNIX-like operating system but with its own kernel. It's tested on an emulation of Intel Q35 chipset.

<p align="center">
<img src="https://raw.githubusercontent.com/nemoload/KawaiiOS/master/screenshots/screenshot1.png">
</p>

## How to compile annd run it?
### Requirments:
1. A GNU/Linux environment
2. GCC (with cross-compiling)
3. NASM
4. GNU Make
5. QEMU
6. cdrtools

### Installing:
`$ sudo apt-get install nasm mkisofs gcc-multilib`
### Compiling:
`$ make  # Haven't expected that, have you?`
### Running:
`$ qemu-system-i386 -enable-kvm -d cpu_reset -boot d -cdrom kawaiios.iso -m 16`

You can omitt the `-enable-kvm` parameter if you don't have/don't want to. Also the memory size is, for now, hard coded into the source code so changing the memory size from **16** in `-m 16` to anything else migh break up some stuff.

## Features:

#### Supported Archetictures:
- [x] Intel x86
- [ ] ARMv7-A
    

Archticture-depndent features:
- [ ] Multitasking
- [ ] Multithreading

#### Kernel Features:
- [x] Monolitich design
- [ ] Virtual File System

#### Supported Devices:

- [x] PS/2 Keyboard



## Note
The code of KawaiiOS is far from ready there's a lot of things that should be fixed and changed and the work is still in progress.
