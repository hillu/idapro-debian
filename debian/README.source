An idapro .deb ppackage for use on Debian/Ubuntu
------------------------------------------------

As of version 6.95, IDA Pro is only available for the i386
architecture. The files in this repository can be used to create an
easily installable .deb package from the installer's contents that
uses the system's 32-bit Python libraries.

1. Use the installer to unpack the contents into a temporary working
directory (prefix), e.g.:

    sh idapronl_160808_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.run \
        --installpassword xxxxxxxxxxxx \
        --prefix `pwd`/idapro-6.95.160808 \
        --mode unattended \
        --localpython 0

2. Copy the `debian/` directory to the working directory.

3. Build the package by running `dpkg-buildpackage -b` in an i386
environment. An i386 chroot environment can be used for this.

4. On the target machine, add i386 as a secondary architecture if
necessary:

    dpkg --add-architecture i386
    apt-get update

5. On the target machine, install the .deb package. This will likely
fail due to missing dependencies. Those can be added using apt in a
second step.

    dpkg -i idapro_6.95.160808-1_i386.deb
    apt-get -f install

The .deb package does not contain the `ida.key` file that has been
added to the installer. It must be copied to `~/.idapro` for the user
that is going to use IDA on the target machine(s).

 -- Hilko Bengen <bengen@hilluzination.de>  Thu, 29 Dec 2016 22:59:57 +0100
