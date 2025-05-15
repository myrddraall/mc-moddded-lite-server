#!/bin/bash

docker pull itzg/minecraft-server

./stop.sh

rm -Rf ./data/mods/
mkdir -p ./data/mods/
mkdir -p ./data/world-2025/serverconfig/
rm -Rf ./downloads/
mkdir -p ./downloads/

wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/server-config/mantle-server.toml -O ./data/world-2025/serverconfig/mantle-server.toml


# Download mods that can't be auo loaded with curseforge due to licencing 
wget https://cdn.modrinth.com/data/gu7yAYhd/versions/GYnSPc0b/cc-tweaked-1.20.1-forge-1.115.1.jar -O downloads/cc-tweaked-1.20.1-forge-1.115.1.jar

./start.sh
