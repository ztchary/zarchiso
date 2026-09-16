# zarchiso

My own arch iso which is way better than stock

It manages to fit everything* needed and still be only ~500MB (about 33% of the stock iso's size)

## to use

1. Install the archiso package

`sudo pacman -S archiso`

2. Build the iso

`make`

3. Copy the iso to a usb drive

`sudo dd if=zarchlinux-1234.56.78-x86_64.iso of=/dev/sda bs=1M status=progress`

4. Boot to the iso

5. Connect to network (if using wireless)

`iwctl station wlan0 scan`

`iwctl station wlan0 connect ssid`

6. Install the system

`zarchinstall`

---

I've only included what I need to install onto the systems I use.
If for whatever reason anyone else decides to use this nonsense,
put additional required packages for the iso in `profile/packages.x86_64`

I haven't messed with the bootstrap at all yet, I just added it because I
thought it was cool to include in the nightly builds. Theres a good chance it
doesn't work at all.

If you decide to use anything other than x86_64, good luck I'm not supporting that.

For lazy bums who can't run the make command,
I'm hosting nightly builds of the iso here: https://ztchary.net/zarchiso

