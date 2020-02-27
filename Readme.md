###  Installation environment and first run

Install docker-compose on Ubuntu 18:

```bash
sudo apt install docker-compose
docker-compose -v
```

Run project in terminal:
 - on dev with terminal layout
```bash
docker-compose up -d 
```

- on production
```bash
docker-compose up
```

On browser open http://localhost:8001/

### Base commands 

```bash
docker-compose -h

docker-compose up
docker-compose ps -a #list all docker containers
docker-compose down
```

More info with using docker containers <a href="./docker/documentation/docker.sh">here</a>.

### Task list for project

- [x] Base docs for Docker adn docker-compose
- [x] Implement Symfony to docker container NGINX
- [ ] Implement MySQL to docker container
- [ ] Config xdebug
- [ ] Implement Elastic Search and Kibana
- [ ] Implement Kubernetes 