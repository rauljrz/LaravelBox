#!/bin/sh

# Set the base directory for the app
BASEDIR=/opt/laravel

echo ""
echo " Laravel Installation in Docker"
echo " =============================="
echo ""
echo ""
echo "> Are you sure you want to install Laravel in the folder $BASEDIR? (y/n)"
read confirmation
echo ""

if [ "$confirmation" != "y" ] && [ "$confirmation" != "Y" ]; then
    echo "Installation cancelled."
    exit 1
fi

if [ "$(ls -A $BASEDIR)" ]; then
    echo "> The folder $BASEDIR is not empty. Are you sure you want to delete all its contents,"
    echo "  including hidden files? (y/n)"
    read delete_confirmation
    if [ "$delete_confirmation" != "y" ] && [ "$delete_confirmation" != "Y" ]; then
        echo "Installation cancelled."
        exit 1
    fi
    rm -rf $BASEDIR/{*,.*}
    rm -rf $BASEDIR/.*
    rm -rf $BASEDIR/*
fi

echo "- Installing Laravel"
# Ensure the /opt/laravel/ directory exists
mkdir -p /opt/laravel/

# Change to the /opt/laravel/ directory
cd /opt/laravel/

# Verify and display the current directory
echo "> Current directory: $(pwd)"

composer create-project laravel/laravel .

# Modify the .env.example file
sed -i 's/DB_CONNECTION=.*/DB_CONNECTION=mysql/' $BASEDIR/.env.example
sed -i 's/^# *DB_HOST=.*/DB_HOST=mysql/' $BASEDIR/.env.example
sed -i 's/^# *DB_PORT=.*/DB_PORT=3306/' $BASEDIR/.env.example
sed -i 's/^# *DB_DATABASE=.*/DB_DATABASE=laravel/' $BASEDIR/.env.example
sed -i 's/^# *DB_USERNAME=.*/DB_USERNAME=root/' $BASEDIR/.env.example
sed -i 's/^# *DB_PASSWORD=.*/DB_PASSWORD=secret/' $BASEDIR/.env.example

# Remove existing .env and copy .env.example to .env
rm -f $BASEDIR/.env
cp $BASEDIR/.env.example $BASEDIR/.env

php artisan migrate

php artisan key:generate --force

echo ""
echo "> Laravel installation process has been completed successfully."
echo "  You can now start developing your application!"
echo ""
echo "> You can access the site at:"
echo "                               => http://localhost"
echo "   and the PHPMyAdmin at:"
echo "                               => http://localhost:8891"
echo ""
