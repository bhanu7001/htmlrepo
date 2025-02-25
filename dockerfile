# Use the official NGINX image based on Alpine for a lightweight web server
FROM nginx:alpine

# Remove the default NGINX website content
RUN rm -rf /usr/share/nginx/html/*

# Copy your todolist.html to the NGINX web root and rename it as index.html
COPY todolist.html /usr/share/nginx/html/index.html

# Expose port 80 to be accessible outside the container
EXPOSE 80

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
