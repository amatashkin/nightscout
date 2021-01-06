# Nightscout on Docker

[Nightscout Web Monitor (a.k.a. cgm-remote-monitor)](https://github.com/nightscout/cgm-remote-monitor)

**DEVELOPMENT VERSION! Use is without warranty or support. Review the LICENSE in the repository!**.

All information, thought, and code described here is intended for informational and educational purposes only. Nightscout currently makes no attempt at HIPAA privacy compliance. Use of code from github.com is without warranty or support of any kind. Please review the LICENSE found within each repository for further details. Use Nightscout at your own risk, and do not use the information or code to make medical decisions.

## Nightscout on Docker 
This repository contains all the configuration files for running Nightscout on a Docker environment. Docker enables the end-user to easily deploy and manage the Nightscout stack on top of a cloud-providers such as SoftLayer, Azure, Digital-Ocean, Amazon Web Services or a private server (Bring Your Own Node).


### Build

```bash
docker build -t amatashkin/nightscout .
docker push amatashkin/nightscout
```

### Deploying the stack using Docker compose.

Using [Docker Compose](https://docs.docker.com/compose/) deploying is quick and easy:

```bash
git clone https://github.com/amatashkin/nightscout.git
cd nightscout
```
Rename mongo.env.example and nightscout.env.example to mongo.env and nightscout.env respectively and adjust as needed.

- [ ] TODO: Add Mongo user creation script and steps

Start the containers
```bash
docker-compose up -d
```

All images will be pulled from the registry and started by Docker.