pip install django
gunicorn /home/site/wwwroot/VulnerableWebApp/VulnerableWebApp.wsgi --bind=0.0.0.0:80
