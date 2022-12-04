#!/bin/bash
# -*- coding: utf-8 -*-

#==============================================================================
# Titre            : delete_user.sh
# Description      : Script de lancement du playbook de suppression d'un utilisateur
# Auteur           : Sebastux
# Date             : 20/08/2022
# Modification     : 20/08/2022
# Version          : 1.00
# Utilisation      : playbooks/delete_user.sh
# Notes            : Script lancé par make.
# Version de bash  : 5.1.16(1)-release
#==============================================================================

clear

# shellcheck source=/dev/null
source .venv/bin/activate

# Lancement de la suppression d'un compte utilisateur.
ansible-playbook playbooks/outils/delete_user.yml -i production

# Sortie de l'environnement virtuel
deactivate
