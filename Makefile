build:
	cp /etc/pacman.d/mirrorlist.pacnew mirrorlist.pacnew
	./gen_mirrorlist mirrorlist.pacnew

update:
	mv mirrorlist /etc/pacman.d/.

.PHONY: build
