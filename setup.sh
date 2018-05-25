curl -sL https://deb.nodesource.com/setup_8.x | bash -
apt-get install -y git
apt-get install -y nodejs
apt-get install -y build-essential
apt-get install -y mongodb
apt-get install -y authbind
git clone https://github.com/hollerith/pohnaz.git
cd pohnaz
npm i npm@latest -g
npm install --save
apt-get install -y screen
