#!/bin/bash


./stop.sh

rm -Rf ./data/mods/

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
# wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/downloads/HammersAndExcavators-1.1.jar -O downloads/HammersAndExcavators-1.1.jar

./start.sh