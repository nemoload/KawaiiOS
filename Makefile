all: os-image

kernel.bin:
	make -C kernel
	
bootloader.bin:
	make -C bootloader

os-image: bootloader.bin kernel.bin
	dd if=/dev/zero of=disk.img bs=512 count=2880
	dd conv=notrunc if=bootloader/bootloader.bin of=disk.img bs=512 count=1 seek=0
	dd conv=notrunc if=kernel/kernel.bin of=disk.img bs=512 count=20 seek=1

clean:
	rm **/*.o **/*.bin disk.img
