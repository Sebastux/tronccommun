#!/bin/bash
# -*- coding: utf-8 -*-

#==============================================================================
# Titre            : rpmfusion.sh
# Description      : Script de reconstruction du grub.
# Auteur           : Sebastux
# Date             : 10/01/2023
# Modification     : 10/01/2023
# Version          : 1.00
# Utilisation      : ./rpmfusion.sh
# Notes            : Ce script est destiné à être lancé par ansible pour
#                    installer les dépots rpmfusion
# Version de bash  : 5.2.15(1)-release
#==============================================================================

# Installation des dépots rpmfusion
dnf install -y --nogpgcheck https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-$(rpm -E %rhel).noarch.rpm \
                            https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-$(rpm -E %rhel).noarch.rpm