# Inherit from the latest Node.js Docker Hub image.
FROM node:latest

# Expose port 8080.
EXPOSE 8080

# Set the working directory to /app.
WORKDIR /app

# Copy code into the image and run npm install.
COPY . /app
RUN npm install

# Start the application.
CMD [ "npm", "start" ]

