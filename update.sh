#!/bin/bash

docker pull itzg/minecraft-server

./stop.sh

rm -Rf ./data/mods/
rm -Rf ./downloads/

mkdir -p ./data/mods/
mkdir -p ./downloads/


wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/docker-compose.yml -O docker-compose.yml

wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/start.sh -O start.sh
chmod +x start.sh

wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/stop.sh -O stop.sh
chmod +x stop.sh

wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/logs.sh -O logs.sh
chmod +x stop.sh

# Download mods that can't be auo loaded with curseforge due to licencing 

wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/downloads/HammersAndExcavators-1.1.jar -O downloads/HammersAndExcavators-1.1.jar
wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/downloads/iron_ender_chests-1.20-1.0.2.jar -O downloads/iron_ender_chests-1.20-1.0.2.jar
wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/downloads/trimeffects-1.0.1-forge.jar -O downloads/trimeffects-1.0.1-forge.jar

./start.sh