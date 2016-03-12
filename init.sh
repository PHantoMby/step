#sudo apt-get update
#sudo apt-get install nginx
#sudo apt-get install python3-pip
#sudo pip3 install gunicorn
#sudo pip3 install django
#sudo pip3 install pymysql
#sudo cp /home/box/web/nginx.conf /etc/nginx/
#sudo pip install pymysql
#sudo /etc/init.d/mysql restart
#mysql -u root -e "create database box_django"
#sudo python3 /home/box/web/ask/manage.py makemigrations
#sudo python3 /home/box/web/ask/manage.py migrate

#sudo unlink /etc/nginx/sites-enabled/default
#sudo ln -fs /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
#sudo nginx -t && sudo /etc/init.d/nginx restart
#sudo gunicorn -b 0.0.0.0:8080 hello:application
#sudo ln -fs /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
#sudo /etc/init.d/gunicorn restart

# sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
# sudo /etc/init.d/nginx restart
# sudo gunicorn -b 0.0.0.0:8080 hello:application
# sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/ask
# sudo /etc/init.d/gunicorn restart

sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo rm /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
#sudo gunicorn -b 0.0.0.0:8080 hello:application
sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
