#! /bin/bash
read -p "please enter how long hours from now on:" age 
echo "Ubuntu will shutdown in $(($age*60)) hours"
sudo shutdown -h  $(($age*60))
