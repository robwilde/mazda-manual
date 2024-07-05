# Use the official Nginx image as a base
FROM nginx:latest

# Install git
RUN apt-get update && apt-get install -y git

# Set the working directory
WORKDIR /usr/share/nginx/html

# Clone the repository
RUN git clone https://github.com/robwilde/mazda-manual.git .

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
