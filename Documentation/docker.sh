# *****************************************
# Install Docker on Ubuntu 18
# *****************************************

sudo apt update
sudo apt install apt-transport-https
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce
sudo systemctl status docker
sudo usermod -aG docker $USER
sudo docker -v
# => restart Ubuntu for implementing type user
docker -v
docker run hello-world  # test demo container

# *****************************************
# Base command for manage Docker
# *****************************************

docker ps       # list active containers q  
docker ps -a    # list all containers
docker images   # list all images

# ******************************************************

docker search nginx # list of availible images like %nginx%
docker pull nginx  
docker run nginx    # pull and run

# Run with forwarding port from_external:to_docker_conatiner
docker run -it -p 7777:8080 nginx           # interactive mode for TEST
docker run -it -p 7777:8080 nginx:latest    # interactive mode for TEST
docker run -d -p 7777:80 nginx:<version>    # hidden mode for PROD

docker stop <name_container> 

# ******************************************************

docker rm  <name_container> # delete container
docker rmi <name_image>     # delete image

docker rm -f $(docker ps -aq)        # Delete all Containers
docker rmi -f $(docker images -q)    # Delete all Images

# ******************************************************

docker build -t custom_image .  # Build image from a Dockerfile

docker tag custom_image custom_image_PROD:v2 # copy image


# ******************************************************
# Manual update image 
# ******************************************************

docker run -d -p 7777:80 custom_image
docker exec -it <id_container> /bin/bash
echo "Hello world" >> /var/www/html/index.html
printenv | grep 'ROOT' # check variable APACHE_DOCUMENT_ROOT
exit
docker commit <id_container> custom_image:latest

# ******************************************************
# Export/Import Docker Image to file
# ******************************************************

docker save image:tag > new_name.tar
docker load -i new_name.tar