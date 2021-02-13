# Pi-Hole & Unbound Dockerization

## Description

Run Pi-Hole and Unbound inside a container

## Usage

Create a `.env` file next to your `docker-compose.yaml` to substitute variables for your deployment.

Copy and paste the following `.env` template and adjust the variables:

```
# General Env. variables
ADMIN_EMAIL=
TZ=America/New_York
WEBPASSWORD=MySuperSecretPassword

# Change this to the targeted version (eg.: latest, test, v5.6, ...)
VERSION=latest
```
