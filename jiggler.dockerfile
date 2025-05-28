 # Use a lightweight Nginx image
 FROM nginx:stable-alpine

 # Copy your application files into the Nginx default webroot
 # Assuming your page files (index.html, js, css, etc.) are in a directory named 'app'
 # If your files are in the root, adjust the source path accordingly (e.g., COPY . /usr/share/nginx/html)
 COPY ./app /usr/share/nginx/html # Your app files

 # Copy the custom Nginx configuration
 COPY ./nginx.conf /etc/nginx/nginx.conf

 # Expose the port Nginx listens on
 EXPOSE 80

 # Command to run Nginx (default in the base image)
 CMD ["nginx", "-g", "daemon off;"]