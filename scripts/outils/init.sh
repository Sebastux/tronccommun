#!/bin/bash
# -*- coding: utf-8 -*-

#==============================================================================
# Titre            : init.sh
# Description      : Script de création d'un environement virtuel
# Auteur           : Sebastux
# Date             : 20/08/2022
# Modification     : 04/12/2022
# Version          : 1.00
# Utilisation      : ./init.sh
# Notes            : Script lancé par make.
# Version de bash  : 5.2.9(1)-release
#==============================================================================

# Suppression de l'ancien environnement virtuel
echo "Suppression de l'ancien environement."
rm -fr .venv
clear

# Création et mise à jour des packages par défaut.
echo "Création de l'environement."
python3 -m venv .venv

# shellcheck source=/dev/null
source .venv/bin/activate

# Mise à jour de pip
pip install --upgrade -r req_pip.txt

# Installation d'ansible.
pip install -r requirements.txt

# Installation des linter ansible et yaml.
pip install -r req_verif.txt

# Sortie de l'environnement virtuel
deactivate

# Copie du fichier d'inventaire dans le répertoire de prod.
cp ficscommun/Inventaire/inventory production/inventory
