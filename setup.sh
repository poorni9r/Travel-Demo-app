git clone https://github.com/poorni9r/Travel-Demo-app.git
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 16.0.0
npm install -g http-server
cd Travel-Demo-app
http-server -c-1

