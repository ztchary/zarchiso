UUID := $(shell uuidgen)

.PHONY: all iso
all: clean iso

iso:
	mkdir -p /tmp/mkarchiso-$(UUID)
	mkarchiso -v -w /tmp/mkarchiso-$(UUID) -o . profile

clean:
	rm -f *.iso
