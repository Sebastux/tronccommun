#!/bin/bash
# -*- coding: utf-8 -*-

#==============================================================================
# Titre            : Installation.sh
# Description      : Script de lancement de l'installation complète du master.
# Auteur           : Sebastux
# Date             : 20/08/2022
# Modification     : 20/08/2022
# Version          : 1.00
# Utilisation      : ./installation.sh
# Notes            : Script lancé par make.
# Version de bash  : 5.1.16(1)-release
#==============================================================================

clear

# shellcheck source=/dev/null
source .venv/bin/activate

# Lancement de l'installation complete du master.
ansible-playbook site.yml -i production --flush-cache

# Sortie de l'environnement virtuel
deactivate
