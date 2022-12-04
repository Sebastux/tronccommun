#!/bin/bash
# -*- coding: utf-8 -*-

#==============================================================================
# Titre            : update.sh
# Description      : Script permettant la mise à jour de l'environement et du dépôt.
# Auteur           : Sebastux
# Date             : 20/08/2022
# Modification     : 20/08/2022
# Version          : 1.00
# Utilisation      : playbooks/update.sh
# Notes            : Script lancé par make.
# Version de bash  : 5.1.16(1)-release
#==============================================================================

clear

# shellcheck source=/dev/null
source .venv/bin/activate

# Mise à jour des modules d'installation
pip install --upgrade pip
pip install --upgrade setuptools
pip install --upgrade wheel

# Mise à jour d'ansible et de ces dépendances
pip install --upgrade -r update.txt

# Sortie de l'environnement virtuel
deactivate

# Mise à jour du dépôt git
git pull
