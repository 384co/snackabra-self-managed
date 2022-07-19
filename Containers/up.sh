#!/bin/sh

if [ -f ".env" ]; then
    echo ".env exists."
else
    echo ".env does not exist."
    exit
fi

envs=`cat .env`
channel_wrangler=`cat ../Images/Servers/channel/wrangler.template.toml`
storage_wrangler=`cat ../Images/Servers/storage/wrangler.template.toml`

echo "$storage_wrangler" > ../Images/Servers/storage/wrangler.toml
echo "[vars]\n" >> ../Images/Servers/storage/wrangler.toml
echo "$envs" >> ../Images/Servers/storage/wrangler.toml

echo "$channel_wrangler" > ../Images/Servers/channel/wrangler.toml
echo "[vars]\n" >> ../Images/Servers/channel/wrangler.toml
echo "$envs" >> ../Images/Servers/channel/wrangler.toml


docker-compose build --no-cache
docker-compose up -d --build --force-recreate
