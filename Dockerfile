# Use the official WordPress image with PHP 7.4 and Apache
FROM wordpress:php7.4-apache

# Install necessary PHP extensions for WordPress
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite for pretty permalinks
RUN a2enmod rewrite

# Set proper file ownership to the web server user
RUN chown -R www-data:www-data /var/www/html

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
