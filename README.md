# Docker
run the first  # if the image is not present in the local docker pull the image from the docker ,, so this httpd is the running container ; run the local browser using localhost://8082 , and you get the welcome message
docker run -d -p 8082:80 httpd 


pull and run webserver (nginx) # pull the image form the docker registry and run this image inner the conatiner , 
docker pull 
and run the pulling ngnix
docker run -d -p 8080:80 nginx


# image build
docker pull image_name 
docker images
docker rmi image_name
docker tag <image> <new-name:tag>  #docker tag d3 my-web:v1 
                                #docker tag d3 my-web:stable
                                #docker tag d3 my-web:testing #aita mainly ami main image ar reference make kortaci jate ami tag dia hub a push korte pari




docker build -t <name:tag> . #build images from dockerfile
docker inspect <image> #Get image details
docker history <image> #show images layer history

# containers
docker run <image> #run the container
docker run -it <image> /bin/bash #interactive terminal 
docker run -d <image> #Run in detached  the container run in the server background but i didnot see any log in the background , it is run until the demon running, without d container running in the server and i see the log in terminal 
docker run --name <name> <image> #Assign container name
docker run -p 080:80 <image> #Mp port 8080(host) to 80 (container)
docker run -v /host:/container <image> #Mount volume , if i am the develoment phase and code update always in the container ,i use this commad  docker run -d -p 3000:3000 -v ${PWD}:/app -w /app node:latest npm run dev

docker run --env KEY=value <image> #set enviroment 
-e is use for the set enviroment variable
--env-file.env File use for catches enviroment variable form the file
docker exec <container> helping the seeing enviroment Variables

docker ps # List the running container
docker ps -a #list all container
docker stop <container> #stop running container
docker start <container>
docker restart <container>
docker rm <container>
docker exec -it <container> /bin/bash #Open shell in container
docker logs <container> #view logs of container
docker inspect<container> view contanaier details

# clear Up
docker stop $(docker ps -q) #stop all running containers
docker rm $(docker ps -a -q) #remove all containers
docker rmi $(docker images -q) #remove all images
docker docker prune #Remove unused data (images, containers,volumes )
# Save and load images
docker save -o myimage.tar <image-name> #save image to tar file
docker load -i myimage.tar #Load image from tar file
those command run for the convert into the tar file and this tar file save my local and after that this tar file i transfer the anoter computer or server , docker -i myimage.tar this command run for ther import the tar file


