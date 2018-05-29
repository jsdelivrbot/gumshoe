curl -sL https://deb.nodesource.com/setup_8.x | bash -
apt-get install -y git
apt-get install -y nodejs
apt-get install -y build-essential
apt-get install -y mongodb
apt-get install -y authbind
id -u sammy || adduser sammy
touch /etc/authbind/byport/80
chown sammy:sammy /etc/authbind/byport/80
chmod 755 /etc/authbind/byport/80
cd /var
git clone https://github.com/hollerith/pohnaz.git www
cd www
npm install npm@latest -g
npm install pm2 -g
npm install --save
apt-get install -y screen
