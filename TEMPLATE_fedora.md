![alt text](../../docs/images/fedora.jpg "Logo FEDORA")


# **tronccomunfedora** :

Ce rôle permet d'installer un ensemble de packages pour les PC et les Raspberry Pi.
Un ensemble de tache commune aux deux sont exécuté, puis les taches propres au type de
machine est exécuté.

## **Prérequis** :

Connexion ssh à la machine par mot de passe ou par clé.

## **Variables** :

Variables | Description |
-------- | ----------- |
installe_tronc | Contient la liste des packages commun au PC et au Raspberry pi. |
installe_pc | Contient la liste des packages propre aux PC. |
installe_rpi | Contient la liste des packages propre aux Raspberry Pi. |
desinstalle_rpi | Contient la liste des packages à supprimer sur Raspberry Pi. |
desinstalle_pc | Contient la liste des packages à supprimer sur PC. |
packages_pip | Contient la liste des packages pip à mettre à jour. |
banniere_root | Contient le chemin de la bannière afficher lors d'une connexion avec le compte root. |
banniere_utils |  Contient le chemin de la bannière afficher lors d'une connexion avec un compte utilisateur. |
version_role | Contient la version du rôle qui sera ajouté dans le fichier fact. |
architecture_processeur | Permet de choisir une installation type PC (x86_64) ou Raspberry (aarch64) |

## **Dépendances** :

FEDORA 32 Installé et accessible en ssh.

## **Fonctionnalités** :

# Commune
   Effectue les tâches communes aux 2 machines.

# PC
  Effectue les tâches propres aux PC.

# PC
  Effectue les tâches propres aux PC.

# Raspberry Pi
  Effectue les tâches propres aux Raspberry Pi.

## **Auteur** :
Sebastux.

### **Versions** :

![alt text](https://img.shields.io/badge/release-v2.3.0-blue.svg "Logo release") (28/04/2020) :
  - __Corrections et améliorations__ :
    - Le rôle fait maintenant partie d'un playbook.
    - Création d'une variable contenant le chemin des dépôts. Les fichiers ne sont plus téléchargé
      puis installé en utilisant une commande shell.
    - Désactivation des dépôts h264 et module pour le Raspberry.
    - Modification du fichier ansible.cfg afin de créer un répertoire commun permettant
      de stocker des fichiers commun à tous les rôles du playbook.
    - Création d'un template commun permettant la création d'un fichier facts.
    - Activation de fail2ban sur Raspberry et configuration de ssh.
    - Suppression des fichiers permettant le passage en IP statique. Le passage se fera
      à l'aide d'un module dédié qui est à l'heure actuelle buggé (v 2.9). Celui-ci
      devrais être corrigé dans la prochaine version majeur.


![alt text](https://img.shields.io/badge/release-v2.2.0-blue.svg "Logo release") (26/10/2019) :
  - Correction de bugs et améliorations :
    - Ajout d'un fichier contenant la version minimale d'ansible.
    - Suppression de variables inutiles.
    - Modification d'alias pour root.
    - Modification d'alias utilisateurs.
    - Modification des scripts affichant les infos du serveur pour root et pour les utilisateurs.
    - Déplacement des bannières dans le répertoire commun dans /opt (création automatique).
    - Suppression de l'IP statique.
    - Suppression des packages python2 inexistants dans Fedora 31.
    - Utilisation de chrony au lieu de ntpd.
    - Déplacement de l'installation de rpm fusion dans la partie commune afin de l'utiliser
      sur les Raspberry Pi.
    - Ajout d'un tableau contenant la description des variables dans le fichier readme.

![alt text](https://img.shields.io/badge/release-v2.1.2-blue.svg "Logo release") (16/08/2019) :

  - Correction de bugs et améliorations :
    - Modification de la valeur de la variable contenant la version du rôle.

![alt text](https://img.shields.io/badge/release-v2.1.1-blue.svg "Logo release") (16/08/2019) :

  - Correction de bugs et améliorations :
    - Correction des alias root qui ne tenaient pas compte de l'architecture de la machine.
    - Ajout d'un reboot en fin de tache.
    - Sur RPI : Ajout de la suppression de l'utilisateur cockpit afin de pouvoir supprimer le groupe associé.
    - Modification des droits sur les scripts afin de pouvoir les exécuter.
    - Ajout et déplacement de variables.

![alt text](https://img.shields.io/badge/release-v2.1.0-blue.svg "Logo release") (03/08/2019) :

  - Correction de bugs et améliorations :

    ![alt text](https://img.shields.io/badge/Amélioration-5%20close-yellow/github/issues/:Sebastux/:tronccomunfedora "Amélioration") Désinstallation des packages du Raspberry Pi en double.

    ![alt text](https://img.shields.io/badge/Bug-6%20close-yellow/github/issues/:Sebastux/:tronccomunfedora "Bug") Les alias maj et beta ne sont pas disponibles pour le compte Root.

    ![alt text](https://img.shields.io/badge/Bug-7%20close-yellow/github/issues/:Sebastux/:tronccomunfedora "Bug") Lors de la création d'un compte local ou LDAP, le fichier texte contenant les alias utilisateurs est dans un état incohérent.

    ![alt text](https://img.shields.io/badge/Bug-8%20close-yellow/github/issues/:Sebastux/:tronccomunfedora "Amélioration") Lorsque l'on se connecte avec le compte root, la bannière et le script ne s'affichent pas.

    ![alt text](https://img.shields.io/badge/Amélioration-9%20close-yellow/github/issues/:Sebastux/:tronccomunfedora "Amélioration") Le script configlang se trouve toujours dans le répertoire /root

    ![alt text](https://img.shields.io/badge/Amélioration-10%20close-yellow/github/issues/:Sebastux/:tronccomunfedora "Amélioration") Détecter l'architecture du processeur à un seul endroit et l'affecter à une variable.

    ![alt text](https://img.shields.io/badge/Amélioration-11%20close-yellow/github/issues/:Sebastux/:tronccomunfedora "Amélioration") Le groupe cockpit n'est pas supprimer lors de la désinstallation des packages.

- Autres améliorations :
  - Coupure du Bluetooth et du service pour les 2 machines.
  - Coupure du wifi pour le pc fixe.
  - Ajout du numéro de version dans le fichier fact.

![alt text](https://img.shields.io/badge/release-v2.0.2-blue.svg "Logo release") (07/07/2019) :

    - Corrections et améliorations du fichier readme.
    - suppression des packages pragha, orage, xfburn, evince et tigervnc de la liste des packages à désinstaller.
    - suppression des packages pragha, orage, xfburn, evince et tigervnc de la liste des packages à désinstaller.
    - Ajout de 2 descriptions de variables.

![alt text](https://img.shields.io/badge/release-v2.0.1-blue.svg "Logo release") (30/06/2019) :

    Correction du bug #4 (mauvais nom de fichier pour un template).

![alt text](https://img.shields.io/badge/version-v2.0.0-brightgreen.svg "Logo Version") (29/06/2019) :
  # Commune
    - Création d'un fichier .fact contenant des variables locale.
    - Mise à jour du fichier dnf.conf afin d'activer des fonctionnalités et d’afficher les actions en couleur.
    - Créer  les alias pour root.
    - Créé un répertoire .alias dans /etc/skel et copie des alias pour les utilisateurs
    - Met à jours des paquets python3 en utilisant pip3.
    - Configure le serveur NTP à l'aide d'un template.
    - Configure le serveur sshd_config à l'aide d'un template. L’autorisation de connexion par mot de passe pour le compte
      root doit être supprimée par le rôle de personnalisation du poste. Cela permet une centralisation de la gestion
      du fichier en cas d'évolution du serveur et des paramètres.
    - Désactive selinux.
    - Installe le tronc commun pour les machines et les dépendances des paquets python.
    - Désinstalle dnfdragora si la machine est un PC.

  # PC
    - Installe les dépôts rpmfusion.
    - Active numlockx au démarrage.
    - Désinstalle les packages inutiles.
    - Ajoute des packages propres aux PC.

  # Raspberry Pi
    - Installe une bannière par défaut.
    - Installe un script root qui affiche des infos sur le serveur en utilisant des variables ansible.
    - Installe un script utilisateur qui affiche des infos basique sur le serveur.
    - Les scripts sont lancés à partir du bashrc.
    - Supprime les packages inutiles.
    - Ajout de package pour RPI.
    - Faire passer le système en français.
