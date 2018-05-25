apt install git
curl -sL https://deb.nodesource.com/setup_8.x | bash -
apt-get install -y nodejs
apt-get install -y build-essential
apt-get install -y mongodb
apt-get install -y authbind
git clone https://github.com/hollerith/pohnaz.git
cd pohnaz
npm i npm@latest -g
npm install --save
apt-get install -y screen
screen
echo PUBLISHABLE_KEY=pk_test_6pRNASCoBOKtIshFeQd4XMUh SECRET_KEY=sk_test_BQokikJOvBiI2HlWgH4olfQ2 MONGO_URI=mongodb://127.0.0.1:27017 PORT=80 node app.js
