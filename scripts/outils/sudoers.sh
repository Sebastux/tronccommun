#!/bin/bash
# -*- coding: utf-8 -*-

#==============================================================================
# Titre            : sudoers.sh
# Description      : Script de lancement du playbook de création d'un compte sudoer.
# Auteur           : Sebastux
# Date             : 20/08/2022
# Modification     : 20/08/2022
# Version          : 1.00
# Utilisation      : playbooks/sudoers.sh
# Notes            : Script lancé par make.
# Version de bash  : 5.1.16(1)-release
#==============================================================================

clear

# shellcheck source=/dev/null
source .venv/bin/activate

# Lancement de la création d'un comptenutilisateur sudoer.
ansible-playbook playbooks/outils/create_admin.yml -i production

# Sortie de l'environnement virtuel
deactivate
