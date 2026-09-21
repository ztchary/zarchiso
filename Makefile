.PHONY: all iso
all: clean iso

iso:
	mkdir -p /tmp/mkarchiso
	mkarchiso -v -r -w /tmp/mkarchiso -o . profile

clean:
	rm -f *.iso
