# Snackabra Self-Managed

Docker images for Storage Server, Channel Server and Webclient

## Pre-Requisites

[NodeJS](https://nodejs.org/en/download/) v15 or higher

[Docker](https://docs.docker.com/engine/install/)

[Docker Desktop](https://docs.docker.com/get-docker/)

[Docker Compose](https://docs.docker.com/compose/install/)

Linux, MacOs or WSL

### Getting Started

Copy sample.env for your local .env 

```cp ./Containers/sample.env .env```

Generate your keys 

```node mint_keys.js ```

Replace the first line in your new .env with your `my_public_key` after it is generated

Update the password in your new .env with a password of your choice

Get familiar with [Snackabra](https://snackabra.io)

### Environment Up

```nodejs
npm run sb:up
```

### Environment Down

```nodejs
npm run sb:down
```
