#! /bin/bash

echo "Création de l'arborescence"
mkdir -p "roles/tronccommun"

echo "Déplacement des répertoires"
mv defaults roles/tronccommun
mv files roles/tronccommun
mv handlers roles/tronccommun
mv meta roles/tronccommun
mv tasks roles/tronccommun
mv templates roles/tronccommun
mv tests roles/tronccommun
mv vars roles/tronccommun

echo "Création de l'environnement virtuel."
if [ "$(tail /etc/redhat-release  | grep -ic fedora)" == "1" ]
then
  python -m venv venv
  source venv/bin/activate
  pip install --upgrade pip setuptools wheel
elif [ "$(tail /etc/redhat-release  | grep -ic alma)" == "1" ]
then
  python3.11 -m venv venv
  source venv/bin/activate
  pip install --upgrade pip setuptools wheel
elif [ "$(tail /etc/redhat-release  | grep -ic rocky)" == "1" ]
then
  python3.11 -m venv venv
  source venv/bin/activate
  pip install --upgrade pip setuptools wheel
fi

echo "Installation d'ansible."
pip install ansible

echo "Test du playbook."
ansible-playbook test.yml -i inventory