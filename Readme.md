#  Installation environment and first run

Install docker-compose on Ubuntu 18:

```bash
sudo apt install docker-compose
docker-compose -v
```

Run project:
 - on dev with terminal layout
```bash
docker-compose -d up
```

- on production
```bash
docker-compose up
```

# Base commands 

```bash
docker-compose -h

docker-compose up
docker-compose ps -a #list all docker containers
docker-compose down
```