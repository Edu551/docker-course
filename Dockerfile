# Use an existing docker image as a base
FROM alpine


# Download and install a dependency
RUN apk add --update redis
RUN apk add --update gcc



# Tell the image what to do when it starts as a container
CMD [ "redis-server" ]

# Naming the docker image
# (dockerID) / (repo/projectName) : (version)
# docker build -t edu/redis:latest .


# docker commit -c "CMD 'redis-server'" CONTAINERID


# Use to see the output => docker build --no-cache --progress=plain .