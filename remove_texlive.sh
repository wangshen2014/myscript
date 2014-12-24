#!/bin/bash
#sudo apt-get purge texlive*
sudo rm -rvf /usr/local/texlive/2014
sudo rm -rvf ~/.texlive2014
sudo rm -rvf /usr/local/share/texmf
sudo rm -rvf /var/lib/texmf
sudo rm -rvf /etc/texmf
sudo apt-get remove tex-common --purge
sudo rm -rvf ~/.texlive
