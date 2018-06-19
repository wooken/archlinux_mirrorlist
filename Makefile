build:
	cp /etc/pacman.d/mirrorlist.pacnew mirrorlist.pacnew
	awk -f gen_mirrorlist.awk mirrorlist.pacnew

.PHONY: build
