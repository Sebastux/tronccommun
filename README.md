# **tronccomun** :

Ce rôle permet d'installer un ensemble de packages pour les PC et serveurs .
Ce playbook prend en charge les serveurs et les PC Fedora. Un ensemble de tâche commune aux deux sont exécutés, puis les tâches propres au type de
machine est exécuté si une installation du bureau XFCE est détecté


## **Prérequis** :
Créer un playbook qui permette l'appel du rôle, fonctionne aussi avec git submodule

## **Variables** :

Aucune

## **Système d'exploitation** :

![Fedora](https://img.shields.io/badge/Fedora-294172?style=for-the-badge&logo=fedora&logoColor=white) dans sa version 38

![CentOS](https://img.shields.io/badge/cent%20os-002260?style=for-the-badge&logo=centos&logoColor=F0F0F0) dans sa version 9.x

![Rocky](https://img.shields.io/badge/rocky-002260?style=for-the-badge&logo=centos&logoColor=F0F0F0) dans sa version 9.x

![AlmaLinux](https://img.shields.io/badge/AlmaLinux-0078D6?style=for-the-badge&logo=linux&logoColor=black) dans sa version 9.x

![Ansible](https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white) dans sa version 8.x

## **Fonctionnalités** :

Installe divers packages et configurations pour Fedora, CentOS, Rocky Linux et Alma Linux.

## **Auteur** :
Sebastux.

### **Versions** :

![alt text](https://img.shields.io/badge/version-v1.1.0-brightgreen.svg "Logo Version") (02/07/2023) :

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
