sudo pip2 install django==1.7.7

sudo /etc/init.d/mysql restart
mysql -uroot -e "create database stepic character set 'UTF8';"
mysql -uroot -e "grant all privileges on stepic.* to 'stepic'@'%' identified by 'stepic';"

python /home/box/web/ask/manage.py syncdb --noinput

sudo unlink /etc/nginx/sites-enabled/default
sudo ln -fs /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo nginx -t && sudo /etc/init.d/nginx restart
sudo ln -fs /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo unlink /etc/gunicorn.d/django
sudo ln -s /home/box/web/etc/django /etc/gunicorn.d/django
sudo /etc/init.d/gunicorn restart

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

#sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
#sudo rm /etc/nginx/sites-enabled/default
#sudo /etc/init.d/nginx restart
#sudo gunicorn -b 0.0.0.0:8080 hello:application
#sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn restart
