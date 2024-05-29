#! /bin/sh

# Exit if a command fails
set -eo pipefail

# Add Alpine Linux repository
echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >>/etc/apk/repositories

# Update package lists
apk update

# Install necessary packages
apk add aws-cli postgresql16-client python3=3.10.14-r1

# Cleanup
rm -rf /var/cache/apk/*
