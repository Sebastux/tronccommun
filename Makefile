.DEFAULT_GOAL := help
SHELL := /bin/bash

# COLORS
GREEN   := $(shell tput -Txterm setaf 2)
YELLOW  := $(shell tput -Txterm setaf 3)
WHITE   := $(shell tput -Txterm setaf 7)
RED     := $(shell tput -Txterm setaf 1)
BLUE    := $(shell tput -Txterm setaf 4)
MAGENTA := $(shell tput -Txterm setaf 5 )
CYAN    := $(shell tput -Txterm setaf 6)
RESET   := $(shell tput -Txterm sgr0)
SOUL    := $(shell tput -Txterm smul)
FSOUL   := $(shell tput -Txterm rmul)

help: # Afficher l'aide.
				@echo ''
				@echo '${SOUL}${MAGENTA}Utilisation${FSOUL}${RESET} :'
				@echo '${YELLOW}make${RESET} ${GREEN}<target>${RESET}'
				@echo ''
				@echo '${GREEN}help${RESET} : Afficher l’aide.'
				@echo ''
				@echo '${SOUL}${MAGENTA}Installations${FSOUL}${RESET} :'
				@echo '${GREEN}install${RESET}       : Installation complète du serveur.'
				@echo ''
				@echo '${SOUL}${MAGENTA}Outils${FSOUL}${RESET} :'
				@echo '${GREEN}delete_user${RESET}   : Supprimer un compte ainsi que son répertoire de connexion.'
				@echo '${GREEN}passwd${RESET}        : Mettre à jour le  mot de passe d’un compte.'
				@echo '${GREEN}reboot${RESET}        : Redémarrer la machine virtuelle.'
				@echo '${GREEN}ssh_key${RESET}       : Mettre à jour la clé ssh d’un compte.'
				@echo '${GREEN}update${RESET}        : Mettre à jour les packages python et le dépôt de la machine ansible.'
				@echo '${GREEN}upgrade${RESET}       : Migrer la VM debian 10 en debian 11'
				@echo '${GREEN}user${RESET}          : Créer un compte utilisateur.'
				@echo ''

# ******** Installation des divers module du master ********

install: ## Installation complète du serveur.
				chmod 700 scripts/installation.sh
				scripts/installation.sh


## ******** Outils divers ********
init: ## Installer les outils afin de déployer la configuration de la machine.
				chmod 700 scripts/outils/init.sh
				scripts/outils/init.sh

update: ## Mettre à jour les packages python et le dépôt.
				chmod 700 scripts/outils/update.sh
				scripts/outils/update.sh

user: ## Créer un compte utilisateur.
				chmod 700 scripts/outils/user.sh
				scripts/outils/user.sh

admin: ## Créer un compte sudoer (sudo).
				chmod 700 scripts/outils/sudoers.sh
				scripts/outils/sudoers.sh

delete_user: ## Supprimer un compte ainsi que son répertoire de connexion.
				chmod 700 scripts/outils/delete_user.sh
				scripts/outils/delete_user.sh

passwd: ## Mettre à jour le  mot de passe d'un compte.
				chmod 700 scripts/outils/passwd.sh
				scripts/outils/passwd.sh

reboot: ## Reboot de la VM.
				chmod 700 scripts/outils/reboot.sh
				scripts/outils/reboot.sh

ssh_key: ## Mettre à jour la clé ssh d'un compte.
				chmod 700 scripts/outils/ssh_key.sh
				scripts/outils/ssh_key.sh
