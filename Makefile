.PHONY: all iso
all: clean iso

iso:
	mkdir -p /tmp/mkarchiso
	mkarchiso -v -w /tmp/mkarchiso -o . profile

clean:
	sudo rm -rf *.iso
