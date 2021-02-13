#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

#
# This script is used to build a test image locally for testing purposes
#

# Test build for multi-platform
docker buildx build --platform linux/arm/v7,linux/arm64/v8,linux/amd64 -t jd10nn3/pihole-unbound:test .. 

# Build for current platform (allow us to use it locally on Docker Desktop)
docker build -t jd10nn3/pihole-unbound:test ..
