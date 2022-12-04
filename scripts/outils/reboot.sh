#!/bin/bash
# -*- coding: utf-8 -*-

#==============================================================================
# Titre            : reboot.sh
# Description      : Script de création d'un environement virtuel
# Auteur           : Sebastux
# Date             : 05/09/2022
# Modification     : 05/09/2022
# Version          : 1.00
# Utilisation      : ./reboot.sh
# Notes            : Script lancé par make.
# Version de bash  : 5.1.16(1)-release
#==============================================================================

clear

# shellcheck source=/dev/null
source .venv/bin/activate

# Lancement de la création d'un compte utilisateur.
ansible-playbook playbooks/outils/reboot.yml -i production

# Sortie de l'environnement virtuel
deactivate
