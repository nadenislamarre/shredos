# ShredOS

ShredOS is a USB bootable small linux distribution with the sole purpose of securely erasing your
disks using the program [nwipe](https://github.com/martijnvanbrummelen/nwipe).

ShredOS boots very quickly and depending upon the host system can boot in as little
as 2 seconds. Nwipe will then list the disks present on the host system. You can then
select the methods by which you want to securely erase the disk/s. Nwipe is able to
simultanuosly wipe multiple disks using a threaded software architecture.

For an upto date list of supported wipe methods see the [nwipe](https://github.com/martijnvanbrummelen/nwipe) page.
* Quick erase        - Fills the device with zeros, one round only.
* RCMP TSSIT OPS-II  - Royal Candian Mounted Police Technical Security Standard, OPS-II
* DoD Short          - The American Department of Defense 5220.22-M short 3 pass wipe. 1,2,& 7.
* DoD 5220.22M       - The American Department of Defense 5220.22-M full 7 pass wipe. 1-7
* Gutmann Wipe       - Peter Gutmann's method. (Secure Deletion of Data from Magnetic and Solid-State Memory)
* PRNG Stream        - Fills the device with a stream from the PRNG.
* Verify only        - This method only reads the device and checks that it is all zero.

Nwipe also includes the following pseudo random number generators:
* mersenne
* twister
* isaac

## Compiling ShredOS and burning to USB stick

The ShredOS system is built using buildroot.
The final system size is about 12MB but due to minimim fat32 partition size, the ending image is about
37MB and can be burnt onto a USB memory stick with a tool such as dd or Etcher.

You can build the image by doing:
```
$ git clone git@github.com:nadenislamarre/shredos.git
$ cd shredos
$ make shredos_defconfig
$ make
$ ls output/images/shredos*.img
```
