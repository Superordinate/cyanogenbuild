#!/bin/bash 
# Gets the build environment and build tools ready.  
# One of the best things CM did for Android is make an incredible framework of tools. Thanks guys!
source build/envsetup.sh
# gets zf2 specific files for the quick charge feature
repopick -t quick-charge-ui
# Gets some more ZF2 related stuff
repopick -t zenfone2_bringup
# Gets the build environment and build tools ready.  One of the best things CM did for Android is make an incredible framework of tools.  Thanks guys!  (Repeated the command for good measure here, because we need it for repopick, but I noticed that when run again, it includes Z00A.  If this is wrong, please tell me.)
source build/envsetup.sh
#Downlaods config & kernel source for Asus Zenfone 2
breakfast Z00A
# Extracts files from your device which have no open source equivalents available and so must be used as binaries.  
# ./extract-files.sh (you'd want to do this for most devices, however, I was getting a build problem due to this, so instead:
# Places proprietary files that cannot be built into a location where they can be used
cd vendor
# Deletes the folder "asus" if there is one (better to start fresh)
rm -rf asus
# clones the repository for asus device proprietary files
git clone https://github.com/CM-zenfone2/proprietary_vendor_asus
# returns us to the workdir
cd ~/android/system/
# I honestly do not know what this command does :(.  If I had to guess it is telling the compilers living in linux's bowels that this is the root 
# of the c code to be compiled.
croot
# This should in fact get things moving
brunch Z00A
