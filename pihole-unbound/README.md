# Pi-Hole + Unbound Docker Image

## Description

Extend the [official](https://hub.docker.com/r/pihole/pihole) image to include the usage of an Unbound server inside the same container.

[Those](https://docs.pi-hole.net/guides/unbound/) are the instructions used to make that custom image.

## Update to latest Pi-Hole official image

1. Get the latest version number (eg.: v5.6)
2. Update the number inside the VERSION file
3. Update the number inside the Dockerfile
4. Make sure to take a look at the release notes and apply the required changes
5. Run the ./bin/build_test.sh file and test the new image
6. Run the ./bin/build_and_publish.sh file to publish to your Docker repository

## Tips

You might need to run this command before any of the others to enable usage of the buildx (experimental) docker driver.

```
docker buildx create --use --name build --node build --driver-opt network=host
```
