#!/bin/bash

## Teste
dpkg -l | grep linux-image

sudo apt purge linux-image-generic-hwe-22.04 -y
sudo apt purge linux-image-6.5.0-27-generic -y
sudo apt purge linux-image-6.5.0-35-generic -y
sudo apt purge linux-image-6.5.0-41-generic -y
sudo apt purge linux-image-unsigned-6.5.0-41-generic -y

sudo apt clean -y
sudo apt autoremove -y

dpkg -l | grep linux-image
