This is a script to automate the generation of a mirror list for Archlinux's Pacman from `mirrorlist.pacnew` file.

The output file is `mirrorlist`, which you can then move to the appropriate directory.

## Usage

### Rank and generate mirrorlist file

```
./gen_mirrorlist.awk /etc/pacman.d/mirrorlist.pacnew
```

or

```
awk -f gen_mirrorlist.awk /etc/pacman.d/mirrorlist.pacnew
```

### Move mirrorlist file (don't forget sudo)

```
mv mirrorlist /etc/pacman.d/.
```

## Hard-coded Variables

- number of mirrors to use: **6**
- regions: **Canada** and **United States**
