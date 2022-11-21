# Travel-Demo-app

This is a simple Node.js Application 



Steps to Deploy Travel-app
1. Download the GitHub repo
   - **git clone https://github.com/poorni9r/Travel-Demo-app.git**
2. Install nvm - node version manager
     - **curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash**
3. Activate nvm
     - **. ~/.nvm/nvm.sh**
4. Use nvm to install the latest version of Node.js by typing the following at the command line.
     - **nvm install 16.0.0**
5. Install http-server 
     - **npm install -g http-server**
6. Navigate to Travel-Demo-app directory
    - **cd Travel-Demo-app**
8. Run the application 
    - **http-server -c-1**

After deploying the Elastic agent and completing the APM Integration run the following step to download the elastic-apm-rum.umd.min.js file from the repo
   - **wget https://github.com/elastic/apm-agent-rum-js/releases/download/%40elastic%2Fapm-rum%405.12.0/elastic-apm-rum.umd.min.js**


**Elastic agent** 
 - **https://www.elastic.co/guide/en/fleet/current/elastic-agent-installation.html**
