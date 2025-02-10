#!/bin/bash
sudo chown -R www-data /var/www/html/

sudo chgrp -R www-data /var/www/html/

sudo chmod -R g+s /var/www/html/

find /var/www/html/ -type d -exec chmod 0775 {} \;

find /var/www/html/ -type f -exec chmod 0664 {} \;

sudo chown -R aniruddh /var/www/nodeapps/

sudo chgrp -R aniruddh /var/www/nodeapps/

sudo chmod -R g+s /var/www/nodeapps/

find /var/www/nodeapps/ -type d -exec chmod 0775 {} \;

find /var/www/nodeapps/ -type f ! -name 'deploy.sh' -exec chmod 0664 {} \;

sudo chown -R dev /home/dev/

sudo chgrp -R dev /home/dev/

sudo chmod -R g+s /home/dev/

sudo chown -R dev /var/docker/

sudo chgrp -R dev /var/docker/

sudo chmod -R g+s /var/docker/
