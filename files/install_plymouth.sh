#!/bin/bash
# -*- coding: utf-8 -*-

#==============================================================================
# Titre            : install_plymouth.sh
# Description      : Script de reconstruction du grub.
# Auteur           : Sebastux
# Date             : 08/01/2023
# Modification     : 25/06/2023
# Version          : 1.00
# Utilisation      : ./install_plymouth.sh
# Notes            : Ce script est destiné à être lancé par ansible pour
#                    installer un théme Plymouth et reconstruire l'initrd
#                    après installation.
# Version de bash  : 5.2.15(1)-release
#==============================================================================

# Installation et activation du theme plymouth
plymouth-set-default-theme -R solar --rebuild-initrd



# plymouth-set-default-theme solar --rebuild-initrd