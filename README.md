# **tronccomun** :

Ce rôle permet d'installer un ensemble de packages pour les PC et les serveurs.
Ce playbook prend en charge les serveurs et les PC Fedora et almalinux.
Chaque OS possède sa partie propre et installe un ensemble d'outils nécessaires à l'administration basique du système.


## **Prérequis** :
Créer un playbook qui permette l'appel du rôle, fonctionne aussi avec git submodule

## **Variables** :

Aucune

## **Système d'exploitation** :

![Fedora](https://img.shields.io/badge/Fedora-294172?style=for-the-badge&logo=fedora&logoColor=white) dans sa version 42

![AlmaLinux](https://img.shields.io/badge/AlmaLinux-0078D6?style=for-the-badge&logo=linux&logoColor=black) dans sa version 9.x et 10.x

![Ansible](https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white) dans sa version 11.6.0 et ansible-core dans sa version 2.18.6 

## **Fonctionnalités** :

Installe divers packages et configurations pour Fedora, et almalinux.

## **Auteur** :
Sebastux.

### **Versions** :

![alt text](https://img.shields.io/badge/version-v1.4.0-brightgreen.svg "Logo Version") (17/26/2025) :
- Correction de divers typos.
- Suppression du code pour Rocky et CentOS.
- Mise à jour du nom des packages pour FEDORA 42.
- Mise à jour du nom des packages pour Almalinux 9.
- Création d'une variable pour Almalinux 10.
- Pour tous les OS, suppression de la désactivation de SELinux.
- Pour tous les OS, suppression de la configuration du SSH.
- Utilisation du module dnf5 pour FEDORA.
- Ajout d'alias root pour faire des mises à jour offline sous FEDORA.

![alt text](https://img.shields.io/badge/version-v1.3.0-brightgreen.svg "Logo Version") (30/07/2023) :
- Correction d'une typo lors du test d'installation du PC.
- Création d'alias différent en fonction de la distribution. Le choix est fait par Jinja.
- Mise en forme de boucle.
- Correction de la version 1.2 dans le README.

![alt text](https://img.shields.io/badge/version-v1.2.0-brightgreen.svg "Logo Version") (02/07/2023) :

- Création de la CI.
- Ajout des scripts shell pour la CI.
- Création de la 1 ère version de la release.
- Suppression de la prise en charge de centos.
- Modification du template chrony pour exécution en conteneur.
- Ajout de condition d'exécution en conteneur sur certain module.

![alt text](https://img.shields.io/badge/version-v1.1.0-brightgreen.svg "Logo Version") (25/06/2023) :

- Ajout de la prise en charge d'Alma Linux. Le rôle est commun pour Rocky et Alma.

![alt text](https://img.shields.io/badge/version-v1.0.0-brightgreen.svg "Logo Version") (15/01/2023) :

  - Création du rôle.
  - Installation de Fedora
  - Installation de CentOS 9
  - Installation de Rocky Linux 9
