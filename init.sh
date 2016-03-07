sudo mv /etc/nginx/sites-available/default $PWD/etc/
sudo ln -sf $PWD/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

sudo ln -sf $PWD/etc/hello.py /etc/gunicorn.d/hello.py
cd $PWD/web/
#gunicorn -c /etc/gunicorn.d/hello.py -b 0.0.0.0:8080 hello:app
gunicorn -c /etc/gunicorn.d/hello.py hello:app
