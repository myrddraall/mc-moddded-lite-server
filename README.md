# mc-moddded-lite-server


## Prerequisites 
  - Docker
  - Docker Compose

## Installation

```sh
wget -O docker-compose.yml https://raw.githubusercontent.com/myrddraall/mc-moddded-lite-server/main/docker-compose.yml
```


## Startup

```sh
docker compose up -d
```

## Shutdown

```bash 
docker compose down
```


## View Logs

```sh
docker logs -f mc_modded_lite
```

## RCon

### Connect to remote console
```sh
docker exec -i mc_modded_lite rcon-cli 
```

### RUN an RCon Command
```sh
docker exec mc_modded_lite rcon-cli {COMMAND}
```

example:

```sh
docker exec mc_modded_lite rcon-cli stop
```
