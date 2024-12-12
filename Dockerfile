# Use the official Nginx image as the base
FROM nginx:latest

# Copy custom configuration files (optional)
# COPY nginx.conf /etc/nginx/nginx.conf

# Set a working directory
WORKDIR /usr/share/nginx/html

# Add a placeholder HTML file to serve
RUN echo '<!DOCTYPE html><html><head><title>Welcome</title></head><body><h1>Hello, Nginx!</h1></body></html>' > index.html

# Expose the default Nginx port
EXPOSE 80

# Keep the container running
CMD ["nginx", "-g", "daemon off;"]