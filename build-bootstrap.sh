#!/bin/bash

cd debs

# BOOTSTRAP_PACKAGES = {
# // Having bash as shell:
# "bash", "readline", "ncurses", "command-not-found", "termux-tools",
dpkg -x bash_* .
dpkg -x readline_* .
dpkg -x ncurses_* .
dpkg -x command-not-found_* .
dpkg -x termux-tools_* .

# // Needed for bin/sh:
# "dash",
dpkg -x dash_* .

# // For use by dpkg and apt:
# "liblzma",
dpkg -x liblzma_* .

# // Needed by dpkg:
# "libandroid-support",
dpkg -x libandroid-support_* .

# // dpkg uses tar (and wants 'find' in path for some operations):
# "busybox",
dpkg -x busybox_* .

# // apt uses STL:
# "libc++",
dpkg -x libc++_* .

# // gnupg for package verification:
# "gpgv",
dpkg -x gpgv_* .

# sviete.dom
dpkg -x libcurl_* .
dpkg -x libcrypt_* .
dpkg -x libnghttp2_* .
dpkg -x termux-exec_* .
dpkg -x openssl_* .



# // For package management:
# "dpkg", "apt" };
dpkg -x dpkg_* .
dpkg -x apt_* .


rm data/data/pl.sviete.dom/files/usr/bin/dpkg-genbuildinfo
# TODO
# cp data/data/pl.sviete.dom/files/usr/* bootstrap_org/
