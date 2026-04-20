USUARI=$1
CLAU=$2
PASSWORD=$USUARI

sudo useradd -m $USUARI

echo $USUARI:$PASSWORD | chpasswd

cd /home/$USUARI
mkdir .ssh

sudo mkdir /home/$USUARI/.ssh

cd .ssh
touch authorized_keys
