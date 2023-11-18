#Using node.js 14 as the base image
FROM node:14

#Set working directory inside the container
WORKDIR /app

#copy it
COPY package*.json ./

#Set a port for the environment
ENV PORT 3001
ENV AMQP_URL amqp://localhost:5672

# Install a dependedncies
RUN npm install
# Copy
COPY . .
# Expose the port
EXPOSE 3001
# Define the command to run
CMD ["npm", "start"]

