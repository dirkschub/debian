#!/bin/bash

# TDE-Paketquellen (Rolling-Release) eintragen
echo 'deb http://mirror.ppa.trinitydesktop.org/trinity-sb bullseye deps-r14 main-r14
#deb-src http://mirror.ppa.trinitydesktop.org/trinity-sb bullseye deps-r14 main-r14' > /etc/apt/sources.list.d/trinity.list

# Paket-SignaturschlÃ¼ssel importieren
wget http://mirror.ppa.trinitydesktop.org/trinity/deb/trinity-keyring.deb -O /tmp/trinity-keyring.deb
dpkg -i /tmp/trinity-keyring.deb
rm /tmp/trinity-keyring.deb

# Paketliste aktualisieren
apt-get update

# Nichtinteraktiven APT-Modus aktivieren
export DEBIAN_FRONTEND=noninteractive

# Trinity-Desktop-Basispaket installieren
apt-get -y install desktop-base-trinity

# Trinity-Desktop-Anwendungen und -Bibliotheken installieren
apt-get -y install ark-trinity filelight-trinity gwenview-i18n-trinity gwenview-trinity k3b-data-trinity k3b-trinity kalarm-trinity kamera-trinity kappfinder-trinity kate-plugins-trinity kate-trinity kaudiocreator-trinity kcalc-trinity kcharselect-trinity kchart-trinity kcontrol-trinity kdbg-trinity kde-i18n-de-trinity kdeaddons-kfile-plugins-trinity kdebase-data-trinity kdebase-kio-plugins-trinity kdebase-runtime-data-common-trinity kdebase-trinity kdebase-trinity-bin kdegraphics-kfile-plugins-trinity kdelibs-data-trinity kdemultimedia-kio-plugins-trinity kdepasswd-trinity kdeprint-trinity kdesktop-trinity kdessh-trinity kdeutils-trinity kdevelop-data-trinity kdevelop-trinity kdf-trinity kdiff3-trinity kdvi-trinity kedit-trinity kfilereplace-trinity kfind-trinity kfloppy-trinity kgpg-trinity khelpcenter-trinity khexedit-trinity kicker-applets-trinity kicker-trinity kile-trinity kile-trinity-i18n-de kivio-data-trinity kivio-trinity kjots-trinity klaptopdaemon-trinity klipper-trinity kmenuedit-trinity kmilo-trinity kmix-trinity knetworkconf-trinity knotes-trinity koffice-data-trinity koffice-libs-trinity konqueror-nsplugins-trinity konqueror-trinity konsole-trinity konsolekalendar-trinity kooka-trinity kopete-otr-trinity kopete-trinity korganizer-trinity kpager-trinity kpdf-trinity kpersonalizer-trinity krdc-trinity kregexpeditor-trinity krename-trinity kruler-trinity krusader-trinity ksim-trinity ksmserver-trinity ksnapshot-trinity ksplash-trinity ksysguard-trinity ksysguardd-trinity kteatime-trinity ktimer-trinity ktip-trinity kviewshell-trinity kwifimanager-trinity libarts1c2a-trinity:amd64 libartsc0-trinity:amd64 libcvsservice0-trinity libk3b3-extracodecs-trinity libk3b3-trinity libkcddb1-trinity libkipi0-trinity libkleopatra1-trinity libkmime2-trinity libkonq4-trinity libkpimexchange1-trinity libkpimidentities1-trinity libkscan1-trinity libktnef1-trinity libtdepim1a-trinity libtqt3-integration-trinity superkaramba-trinity tde-i18n-de-trinity tdeaddons-tdefile-plugins-trinity tdebase-data-trinity tdebase-runtime-data-common-trinity tdebase-tdeio-plugins-trinity tdebase-tdeio-smb-trinity tdebase-trinity tdebase-trinity-bin tdefilereplace-trinity tdegraphics-tdefile-plugins-trinity tdelibs-data-trinity tdelibs14-trinity tdelirc-trinity tdemultimedia-tdeio-plugins-trinity tdepasswd-trinity tdepowersave-trinity tdeprint-trinity tdessh-trinity tdeutils-trinity tdevelop-data-trinity tdevelop-trinity tdewalletmanager-trinity tdm-trinity trinity-keyring twin-trinity xserver-xorg-input-all network-manager-tde ttf-bitstream-vera filelight-trinity

# Nichtinteraktiven APT-Modus deaktivieren
unset DEBIAN_FRONTEND

# Neustart (damit die VirtualBox-Treiber aktiv werden)
reboot
