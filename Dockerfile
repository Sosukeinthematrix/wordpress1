# Use WordPress with PHP 7.4 and Apache
FROM wordpress:php7.4-apache

# Update package lists and install magic-wormhole (if still needed)
RUN apt-get update && apt-get install -y magic-wormhole

# Change the shell for www-data user
RUN usermod -s /bin/bash www-data

# Change ownership of the WordPress directory
RUN chown www-data:www-data /var/www

# Set the user to www-data for running the container
USER www-data:www-data
