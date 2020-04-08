#!/bin/bash
set -e
docker pull alpine:latest
eval $(aws ecr get-login --no-include-email --registry-ids $ACCOUNT_ID)
docker build -t terraform-vault .
docker tag terraform-vault $REPOSITORY_URI/$REGISTRY:terraform_vault
docker push $REPOSITORY_URI/$REGISTRY:terraform_vault
