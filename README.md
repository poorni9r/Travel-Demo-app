# Travel-Demo-app

This is a simple Node.js Application

## Deploy `Travel-Demo-app`

1. **Download** and **Run** the [setup-demo-app.sh](scripts/setup-demo-app.sh) script file

     The script will install & setup `nvm` (node version manager) and also clone this `Travel-Demo-app` repo

     ```bash
     wget https://raw.githubusercontent.com/poorni9r/Travel-Demo-app/main/scripts/setup-demo-app.sh
     
     ./setup-demo-app.sh
     ```


1. **Download** and **Run** the [run-demo-http-server.sh](scripts/run-demo-http-server.sh) script file

     The script will navigate to the cloned `Travel-Demo-app` folder, and start the `http-server`. (type `ctrl-c` to quit the `http-server`)

    ```bash
     wget https://raw.githubusercontent.com/poorni9r/Travel-Demo-app/main/scripts/run-demo-http-server.sh
     
     ./run-demo-http-server.sh
     ```

## Elastic Agent Installation

https://www.elastic.co/guide/en/fleet/current/elastic-agent-installation.html

## APM Integration

After deploying the Elastic agent and completing the APM Integration run the following step to download the elastic-apm-rum.umd.min.js file from the repo

```bash
wget https://github.com/elastic/apm-agent-rum-js/releases/download/%40elastic%2Fapm-rum%405.12.0/elastic-apm-rum.umd.min.js
```
