build:
	cp /etc/pacman.d/mirrorlist.pacnew mirrorlist.pacnew
	./gen_mirrorlist mirrorlist.pacnew

.PHONY: build
