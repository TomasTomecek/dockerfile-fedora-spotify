#!/bin/bash
docker build --build-arg USER_ID="$(id -u)" --tag="$USER/spotify" .
