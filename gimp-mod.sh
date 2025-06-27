#!/bin/bash
# GitHub.com/PiercingXX

                # GIMP 3.0
                    sudo rm -Rf /home/"$username"/.var/app/org.gimp.GIMP/config/GIMP/*
                    sudo rm -Rf /home/"$username"/.config/GIMP/*
                    mkdir -p /home/"$username"/.config/GIMP/3.0
                    chown -R "$username":"$username" /home/"$username"/.config/GIMP
                    cd gimp-dots/Gimp || exit
                    cp -Rf 3.0/* /home/"$username"/.config/GIMP/3.0
                    chown "$username":"$username" -R /home/"$username"/.config/GIMP
                # GIMP 3.1
                    sudo rm -Rf /home/"$username"/.var/app/org.gimp.GIMP/config/GIMP/*
                    sudo rm -Rf /home/"$username"/.config/GIMP/*
                    mkdir -p /home/"$username"/.config/GIMP/3.1
                    chown -R "$username":"$username" /home/"$username"/.config/GIMP
                    cd gimp-dots/Gimp || exit
                    cp -Rf 3.0/* /home/"$username"/.config/GIMP/3.1
                    chown "$username":"$username" -R /home/"$username"/.config/GIMP
