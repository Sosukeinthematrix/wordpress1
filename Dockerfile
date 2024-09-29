# Use the official WordPress image with PHP 7.4 and Apache
FROM wordpress:php7.4-apache

# Install additional PHP extensions for WordPress
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite for WordPress permalinks
RUN a2enmod rewrite

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 to allow external traffic
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
