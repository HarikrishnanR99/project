FROM ubuntu:latest
 
# Set environment variables to non-interactive (prevents issues with tzdata etc.)
ENV DEBIAN_FRONTEND=noninteractive
 
# Update the package list and install NGINX
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
 
# Expose HTTP port
EXPOSE 80
EXPOSE 8080
 
# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
