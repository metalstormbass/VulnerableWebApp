apt install python3-pip -y
pip3 install -r /home/site/wwwroot/VulnerableWebApp/requirements.txt
gunicorn --bind=0.0.0.0:8000 --chdir=/home/site/wwwroot/VulnerableWebApp/ VulnerableWebApp.wsgi
