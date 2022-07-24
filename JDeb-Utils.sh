#!/bin/bash

time=$(date)
user=$(whoami)

echo "Current User: $user"
echo "Current Time: $time"
sleep 1
echo "Jacob's Deb-Utils"
echo "This will install all propriatary AMD Drivers for you"
sleep 6
echo "If you have any problems run script as root User"
sleep 3
echo "Running sudo apt update"
sudo apt update
echo "Checking for NON-FREE enabled"
echo "TO DO THIS TYPE nano /etc/apt/sources.list"
sudo apt search non-free
sleep 3
echo "If no packages show up then NON-FREE is disabled"
sleep 10
echo "Installing AMD Drivers"
apt-get install firmware-amd-graphics libgl1-mesa-dri libglx-mesa0 mesa-vulkan-drivers xserver-xorg-video-all
echo "Restart Computer to see all changes"
