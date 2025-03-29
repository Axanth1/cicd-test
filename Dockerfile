# Base image with NGINX
FROM nginx:alpine

# Copy our NGINX config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy just the HTML file to NGINX's default root
COPY index.html /usr/share/nginx/html/index.html

# (Optional) Copy test files if needed later
# COPY test.txt /usr/share/nginx/html/test.txt
# COPY test.py /usr/share/nginx/html/test.py

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]