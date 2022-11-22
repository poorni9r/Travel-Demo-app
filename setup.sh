git clone https://github.com/poorni9r/Travel-Demo-app.git
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 16.0.0
npm install -g http-server
cd Travel-Demo-app
wget https://github.com/elastic/apm-agent-rum-js/releases/download/%40elastic%2Fapm-rum%405.12.0/elastic-apm-rum.umd.min.js
http-server -c-1

