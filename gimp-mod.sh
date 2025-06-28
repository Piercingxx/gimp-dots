#!/bin/bash
# GitHub.com/PiercingXX

username=$(id -u -n 1000)
builddir=$(pwd)

# Copy PiercingXX GIMP dots into dots folder for Stable and Beta 
    sudo rm -Rf /home/"$username"/.var/app/org.gimp.GIMP/config/GIMP/*
    sudo rm -Rf /home/"$username"/.config/GIMP/*
# GIMP 3.0
    mkdir -p /home/"$username"/.config/GIMP/3.0
    chown -R "$username":"$username" /home/"$username"/.config/GIMP
    cd Gimp || exit
    cp -Rf 3.0/* /home/"$username"/.config/GIMP/3.0
# GIMP 3.1
    mkdir -p /home/"$username"/.config/GIMP/3.1
    chown -R "$username":"$username" /home/"$username"/.config/GIMP
    cp -Rf 3.0/* /home/"$username"/.config/GIMP/3.1
    chown "$username":"$username" -R /home/"$username"/.config/GIMP
    cd "$builddir" || exit