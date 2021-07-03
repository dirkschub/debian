#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Dirk Schubert
# Website 	: 	
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# Neofetch

sh tools/install_neofetch.sh

###############################################################################################

# htop

sh tools/install_htop.sh

###############################################################################################

# vim

sh tools/install_vim.sh

###############################################################################################

# ranger

sh tools/install_ranger.sh

###############################################################################################

# mplayer

sh tools/install_mpv.sh

###############################################################################################


echo "################################################################"
echo "###################   extra software installed  ################"
echo "################################################################"

