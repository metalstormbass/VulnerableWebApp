pip install -r /home/site/wwwroot/VulnerableWebApp/requirements.txt
gunicorn --bind=0.0.0.0:8000 --chdir=/home/site/wwwroot/VulnerableWebApp/ VulnerableWebApp.wsgi
