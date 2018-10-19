#!/bin/bash
#Husn E Rabbi
# Display 
echo -e "#################################################################################"
echo -e "#                                                                               #"
echo -e "#          Create Image, Push Image to Docker Hub and create container          #"
echo -e "#                                                                               #"
echo -e "#################################################################################"

## A.	Creates an image with appropriate tag. 
VER=v1
IMAGE=husnerabbi/nodeapp
echo -e "  creating the Docker image."
ID=$(docker build -q .)
echo -e "  creating the tagging for Docker image."
docker tag $ID $IMAGE:${VER}
docker tag $ID $IMAGE:latest

## B.   Push the image to docker hub (create account on docker hub).
## You have already account on docker hub.
## replace username in username filed and password store in seprate file.

#####----------------------------Docket Login Section------------------#####

# create a password hidden file in the user home directory, let say we create by name
# touch .dockpasswd
# echo "password docker hub" > .dockpasswd  ## replace docker hub password with password docker hub
cat /root/.dockpasswd | docker login --username husnerabbi --password-stdin
# replace the (/root/.dockpasswd) path where you created password file.
# replace the docker hub user name  husnerabbi with yours.
#####-------------------------------------------------------------------#####
# Docker image push to Docker HUb.
docker push $IMAGE

## C.   Creates a container with this image.
docker run -d --name=nodeapplication -p 9000:8083 husnerabbi/nodeapp

# Jobs a Completed
echo -e "\e--Jobs Completed---Now you can access application localhost:9000 \e"
