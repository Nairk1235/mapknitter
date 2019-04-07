git checkout -b main
git pull -f origin main
rvm install ruby-2.4.4
source $(rvm 2.4.4 do rvm env --path)
rvm use ruby-2.4.4
gem install rails -v 3.2.0
sudo apt-get update
sudo apt-get -y install bundler libmysqlclient-dev imagemagick ruby-rmagick libfreeimage3 libfreeimage-dev ruby-dev libmagickcore-dev libmagickwand-dev
# exporter-only:
#sudo apt-get install gdal-bin python-gdal curl libcurl4-openssl-dev libssl-dev zip
gem install bundler
bundle _1.16.2_ install
cp db/schema.rb.example db/schema.rb
cp config/database.yml.cloud9.example config/database.yml
cp config/config.yml.example config/config.yml
sudo service mysql start
mysql -u root -e 'create database mapknitter;'
mysql -u root -e 'create database mapknittertest;'
rake db:setup
sudo apt-get -y install npm nodejs-legacy
sudo npm install -g bower
bower install
echo "Done! Run the application with 'rails s -b \$IP -p \$PORT'"
