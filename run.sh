if [ -f .env ]; then
  export $(cat .env | xargs)
else
  exit
fi

if [ "$INSTALLED" != "true" ]; then
  sleep 40;
  php artisan key:generate
  php artisan config:cache
  php artisan install --ready
fi

php artisan serve --host=0.0.0.0
