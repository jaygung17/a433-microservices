#Using node.js 14 as the base image
FROM node:14

#Set working directory inside the container
WORKDIR /app

#copy it
COPY package*.json ./

#Set a port for the environment
ENV PORT 3000
ENV AMQP_URL amqp://localhost:5672

# Install a dependencies
RUN npm install
# Copy
COPY . .
# Expose the port
EXPOSE 3000
# Define the command to run
CMD ["npm", "start"]

