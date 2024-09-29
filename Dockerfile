FROM php:7.4-apache

# Install necessary PHP extensions for WordPress
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Copy WordPress files
COPY . /var/www/html/

# Set correct permissions for WordPress
RUN chown -R www-data:www-data /var/www/html/

# Expose port 80 for Apache
EXPOSE 80
