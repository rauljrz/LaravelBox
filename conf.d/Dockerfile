FROM php:8.3-fpm-alpine

# Set working directory
WORKDIR /opt/laravel

# Install additional packages
RUN apt-get -y update
RUN apk --no-cache add \
    nginx \
    supervisor \
    npm \
    vim \
    git \
    mc ca-certificates zip unzip

RUN apt-get -y autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Enable opcache extension
RUN docker-php-ext-enable opcache

# {DATABASES} - Section to include all needed database dependencies
# Install PHP extensions for MySQL
RUN apk --no-cache add mysql-client && docker-php-ext-install pdo pdo_mysql

COPY mysql/my.cnf /etc/mysql/my.cnf

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN pecl install redis && docker-php-ext-enable redis
RUN pecl install xdebug-2.9.6 && docker-php-ext-enable xdebug
# Copy Nginx configuration
COPY nginx/default.conf /etc/nginx/nginx.conf

# Copy PHP configuration
COPY php-fpm/php-fpm.conf /usr/local/etc/php-fpm.d/www.conf

COPY php/php.ini /usr/local/etc/php/conf.d/php.ini

COPY php/opcache.ini /usr/local/etc/php/conf.d/opcache.ini

# Copy Supervisor configuration
COPY supervisor/supervisord.conf /etc/supervisord.conf

# Copy el instalador de Laravel
COPY install.sh /opt
RUN chmod +x /opt/install.sh

# Set up permissions
#RUN chown -R www-data:www-data /opt/laravel \
#    && chmod -R 755 /opt/laravel/storage

# Scheduler setup

# Create a log file
RUN touch /var/log/cron.log

# Add cron job directly to crontab
RUN echo "* * * * * /usr/local/bin/php /opt/laravel/artisan schedule:run >> /var/log/cron.log 2>&1" | crontab -

# Expose ports
EXPOSE 80

# Declare image volumes
#VOLUME /opt/laravel/storage

# Define a health check
HEALTHCHECK --interval=30s --timeout=15s --start-period=15s --retries=3 CMD curl -f http://localhost/up || exit 1

# Add up the entrypoint
ADD entrypoint.sh /root/entrypoint.sh

# Ensure the entrypoint script has executable permissions
RUN chmod +x /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]
