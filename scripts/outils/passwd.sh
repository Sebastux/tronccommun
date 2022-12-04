#!/bin/bash
# -*- coding: utf-8 -*-

#==============================================================================
# Titre            : passwd.sh
# Description      : Script de lancement du playbook de changement mot de passe
# Auteur           : Sebastux
# Date             : 20/08/2022
# Modification     : 20/08/2022
# Version          : 1.00
# Utilisation      : playbooks/passwd.sh
# Notes            : Script lancé par make.
# Version de bash  : 5.1.16(1)-release
#==============================================================================

clear

# shellcheck source=/dev/null
source .venv/bin/activate

# Lancement de la création d'un compte utilisateur.
ansible-playbook playbooks/outils/passwd.yml -i production

# Sortie de l'environnement virtuel
deactivate
