#!/bin/bash

wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/update.sh -O update.sh
chmod +x server.sh

wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/update-server.sh -O update-server.sh
chmod +x update-server.sh

wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/start.sh -O start.sh
chmod +x start.sh

wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/stop.sh -O stop.sh
chmod +x stop.sh

wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/logs.sh -O logs.sh
chmod +x stop.sh

wget https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/docker-compose.yml -O docker-compose.yml

./update-server.sh