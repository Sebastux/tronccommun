#! /bin/bash
echo "Installation de packages"
sudo apt-get update
sudo apt-get install p7zip-full p7zip -y

echo "Création de l'arborescence"
mkdir tronccommun

echo "Déplacement des répertoires"
mv defaults tronccommun
mv files tronccommun
mv handlers tronccommun
mv meta tronccommun
mv tasks tronccommun
mv templates tronccommun
mv tests tronccommun
mv vars tronccommun
mv LICENSE  tronccommun
mv README.md  tronccommun

echo "Création de l'archive au format Linux."
tar -jcf tronccommun.tar.bz2 tronccommun

echo "Création de l'archive au format Windobe."
7z a tronccommun.zip tronccommun
