
if [ ! -d "htdocs/wp-admin" ]; then
	echo 'Installing WordPress (release version) in steveclancy/htdocs...'
	if [ ! -d "./htdocs" ]; then
		mkdir ./htdocs
	fi
	cd ./htdocs
	wp core download --locale=en_US --allow-root 
	wp core config --dbname="steveclancy" --dbuser=wp --dbpass=wp --dbhost="localhost" --dbprefix=wp_ --locale=en_US --allow-root
	wp core install --url=steveclancy.dev --title="steveclancy" --admin_user=admin --admin_password=password --admin_email=admin@localhost.dev --allow-root
	
	
  
  
	
	
	cd -

fi


