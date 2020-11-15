# Here is a breakdown of 
#   - docker ps list containers
#   -a the option to list all containers, even stopped ones. Without this, it defaults to only listing running containers
#   -q the quiet option to provide only container numeric IDs, rather than a whole table of information about containers
docker ps -a -q

#Remove all images at once
docker rmi $(docker images -q)

# Start all 
containers:
docker stop $(docker ps -a -q)

# Stop all running containers:
docker stop $(docker ps -a -q)

#Delete all stopped containers:
docker rm $(docker ps -a -q)

# Run a command in a new container as interactive
# -the container will be created, started. 
# -the container will work until the process is completed. When the process is over or the terminal is closed, the container will be stopped automatically
docker run -it image-name

# This command is used to create a container from an image
# -d - say that container stay works even if the interactive terminal will be closed
docker run -it -d <image name>

docker run --name hostname -d -p 22:22 <image name>

# Run command in the active container
docker exec -it container-name bash

# Attach local standard input, output, and error streams to a running container
docker attach	
# Build an image from a Dockerfile
docker build
# Manage builds
docker builder
#Manage checkpoints
docker checkpoint	
docker commit	Create a new image from a container’s changes
docker config	Manage Docker configs
docker container	Manage containers
docker context	Manage contexts
docker cp	Copy files/folders between a container and the local filesystem
docker create	Create a new container
docker diff	Inspect changes to files or directories on a container’s filesystem
docker events	Get real time events from the server
docker exec	Run a command in a running container
docker export	Export a container’s filesystem as a tar archive
docker history	Show the history of an image
docker image	Manage images
docker images	List images
docker import	Import the contents from a tarball to create a filesystem image
docker info	Display system-wide information
docker inspect	Return low-level information on Docker objects
docker kill	Kill one or more running containers
docker load	Load an image from a tar archive or STDIN
docker login	Log in to a Docker registry
docker logout	Log out from a Docker registry
docker logs	Fetch the logs of a container
docker manifest	Manage Docker image manifests and manifest lists
docker network	Manage networks
docker node	Manage Swarm nodes
docker pause	Pause all processes within one or more containers
docker plugin	Manage plugins
docker port	List port mappings or a specific mapping for the container
docker ps	List containers
docker pull	Pull an image or a repository from a registry
docker push	Push an image or a repository to a registry
docker rename	Rename a container
docker restart	Restart one or more containers
docker rm	Remove one or more containers
docker rmi	Remove one or more images
docker run	Run a command in a new container
docker save	Save one or more images to a tar archive (streamed to STDOUT by default)
docker search	Search the Docker Hub for images
docker secret	Manage Docker secrets
docker service	Manage services
docker stack	Manage Docker stacks
docker start	Start one or more stopped containers
docker stats	Display a live stream of container(s) resource usage statistics
docker stop	Stop one or more running containers
docker swarm	Manage Swarm
docker system	Manage Docker
docker tag	Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
docker top	Display the running processes of a container
docker trust	Manage trust on Docker images
docker unpause	Unpause all processes within one or more containers
docker update	Update configuration of one or more containers
docker version	Show the Docker version information
docker volume	Manage volumes
docker wait	Block until one or more containers stop, then print their exit codes
