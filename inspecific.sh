#!/bin/bash 
#install needed packages
apt-get install bison build-essential curl flex git gnupg gperf libesd0-dev liblz4-tool libncurses5-dev libsdl1.2-dev libwxgtk2.8-dev libxml2 
libxml2-utils lzop openjdk-7-jdk openjdk-7-jre pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev g++-multilib gcc-multilib 
lib32ncurses5-dev lib32readline-gplv2-dev lib32z1-dev git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib 
g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip
#make ~/bin for the command repo to be run from, Ubuntu 15.10 already has corresponding into in your .profile to ensure that your machine will 
#find the binaries there and put them on your $PATH.
mkdir -p ~/bin
#Make folder where cyanogenmod source will go
mkdir -p ~/android/system
#download the repo meta-git-repository-management tool (repo is used to coordinate the updating of over 500 git repositories that make up 
#Cyanogenmod/Android)
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
#Mark the repo tool as an executable file
chmod a+x ~/bin/repo
#change your current directory to the one where we will put the CM source code
cd ~/android/system/
#Set up the "repo" meta-git-repository-management tool in ~/android/system
repo init -u https://github.com/CyanogenMod/android.git -b cm-12.1
#Download the CM 12.1 source code from the 500+ repositories where it is kept.  If you have a slower internet connection, remove the -j.  I have a 
#very fast connection, so I like to do 20 jobs at once to save time.
repo sync -j 20
#checks to ensure that the downlaod went well
repo sync -f
#adds export USE_CCACHE=1 to the last line of your .bashrc file.  This will ensure that your computer always uses a compiler cache, which will 
#speed up future builds a great deal.  2nd line tells it to be in your current environment instead of only your future environment.
echo "export USE_CCACHE=1" >> ~/.bashrc export USE_CCACHE=1
#tells your computer to use 100 gigabytes of compile cache.  Feel free to reduce this to 50 GB if you're only building one ROM for one device.  
#I've got something rather different in mind, so I've set it to 100GB and may increase it to 200GB once I've got the SSDs I need for this build 
#machine.
prebuilts/misc/linux-x86/ccache/ccache -M 100G
