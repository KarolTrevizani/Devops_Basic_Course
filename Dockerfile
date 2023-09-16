# Use a base image of Apache HTTPD
FROM httpd:latest

# Copy the content of the local site directory to the image
COPY ./site /usr/local/apache2/htdocs/
