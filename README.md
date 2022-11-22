# Travel-Demo-app

This is a simple Web Application

## Elastic Cluster Deployment

Please create an Elastic Cloud deployment as described in the pre-workshop email, which you should have received prior to this workshop.

## Elastic Agent Deployment

Please login to your Elastic Cloud deployment and follow along with the instructor's screen share view.

## Deploy `Travel-Demo-app`

**Download** and **Run** the [setup-demo-app.sh](scripts/setup-demo-app.sh) script file

The script will install & setup `nvm` (node version manager) and also clone this `Travel-Demo-app` repo, then start up the `http-server`

```bash
wget https://raw.githubusercontent.com/poorni9r/Travel-Demo-app/main/scripts/setup-demo-app.sh
     
. setup-demo-app.sh
```

## Reference

### Elastic Agent Installation Documentation

https://www.elastic.co/guide/en/fleet/current/elastic-agent-installation.html

### APM Integration File

After deploying the Elastic agent and completing the APM Integration run the following step to download the elastic-apm-rum.umd.min.js file from the repo

```bash
wget https://github.com/elastic/apm-agent-rum-js/releases/download/%40elastic%2Fapm-rum%405.12.0/elastic-apm-rum.umd.min.js
```

### Cleanup Script

If there was an issue with the [setup-demo-app.sh](scripts/setup-demo-app.sh), you may un-do the setup steps via the [cleanup.sh](cleanup.sh)

```bash
wget https://raw.githubusercontent.com/poorni9r/Travel-Demo-app/main/scripts/cleanup.sh

. cleanup.sh
```
