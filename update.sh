#!/bin/bash

docker pull itzg/minecraft-server

./stop.sh

rm -Rf ./data/mods/
rm -Rf ./downloads/

mkdir -p ./data/mods/
mkdir -p ./downloads/
mkdir -p ./data/world-2025/serverconfig/


# wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/docker-compose.yml -O docker-compose.yml

# wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/start.sh -O start.sh
# chmod +x start.sh

# wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/stop.sh -O stop.sh
# chmod +x stop.sh

# wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/logs.sh -O logs.sh
# chmod +x stop.sh

wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/server-config/mantle-server.toml -O ./data/world-2025/serverconfig/mantle-server.toml


# Download mods that can't be auo loaded with curseforge due to licencing 

wget https://cdn.modrinth.com/data/gu7yAYhd/versions/GYnSPc0b/cc-tweaked-1.20.1-forge-1.115.1.jar -O downloads/cc-tweaked-1.20.1-forge-1.115.1.jar


./start.sh