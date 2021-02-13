#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

# We gather the version from the VERSION file to follow Docker standards.
docker buildx build --platform linux/arm/v7,linux/arm64/v8,linux/amd64 -t jd10nn3/pihole-unbound:`cat ../VERSION` .. --push
docker buildx build --platform linux/arm/v7,linux/arm64/v8,linux/amd64 -t jd10nn3/pihole-unbound:latest .. --push 