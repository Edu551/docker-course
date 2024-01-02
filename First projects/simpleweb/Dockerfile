# Specify a base image
FROM node:14-alpine

# Specify the working directory
WORKDIR /usr/app

# Install some dependencies inside the working directory
# The first copy looks only at the changes on the package.json file
COPY ./package.json ./
RUN npm install
# The second copy analyzes changes to all remaining files
COPY ./ ./

# Default command
CMD [ "npm", "start" ]

# docker run -p 5000:8080 <image id/name>
#  Route request--^   ^--Port inside the container

# Start a shell inside the container
# docker run -it <image id/name> sh

# Build a image of the container
# docker build -t <image name> .
