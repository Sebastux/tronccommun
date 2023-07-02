#! /bin/bash

echo "Installation des packages RPM."

if [ "$(tail /etc/redhat-release  | grep -ic fedora)" == "1" ]
then
  echo "Installation de packages."
  dnf install -y python3-pip.noarch python3-libselinux python3-dnf openssh-server openssh-clients \
                 selinux-policy selinux-policy-targeted libselinux libselinux-utils
elif [ "$(tail /etc/redhat-release  | grep -ic alma)" == "1" ]
then
  echo "Installation de packages."
  dnf install -y python3-pip.noarch python3-libselinux python3-dnf openssh-server openssh-clients \
                 selinux-policy selinux-policy-targeted libselinux libselinux-utils \
                 python3.11 python3.11-pip
elif [ "$(tail /etc/redhat-release  | grep -ic rocky)" == "1" ]
then
  echo "Installation de packages."
  dnf install -y python3-pip.noarch python3-libselinux python3-dnf openssh-server openssh-clients \
                 selinux-policy selinux-policy-targeted libselinux libselinux-utils \
                 python3.11 python3.11-pip
fi
