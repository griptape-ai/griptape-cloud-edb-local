#!/bin/bash

# source from the .env file
source .env

# login to the Azure Container Registry
docker login gtcappregistryedb.azurecr.io -u $AZURE_OPENAI_CLIENT_ID --password-stdin <<< $AZURE_OPENAI_CLIENT_SECRET

# pull images from gtcappregistryedb.azurecr.io
docker pull gtcappregistryedb.azurecr.io/griptape-release:latest
docker pull gtcappregistryedb.azurecr.io/griptape-scheduler:latest
docker pull gtcappregistryedb.azurecr.io/griptape-workers:latest
docker pull gtcappregistryedb.azurecr.io/griptape-web:latest
docker pull gtcappregistryedb.azurecr.io/griptape-runtime-event-listener:latest

# tag each one with the local registry
docker tag gtcappregistryedb.azurecr.io/griptape-release:latest griptape-release:latest
docker tag gtcappregistryedb.azurecr.io/griptape-scheduler:latest griptape-scheduler:latest
docker tag gtcappregistryedb.azurecr.io/griptape-workers:latest griptape-workers:latest
docker tag gtcappregistryedb.azurecr.io/griptape-web:latest griptape-web:latest
docker tag gtcappregistryedb.azurecr.io/griptape-runtime-event-listener:latest griptape-runtime-event-listener:latest
