until apt install python3-pip -y;do
sleep 1
done
until pip3 install -r /home/site/wwwroot/VulnerableWebApp/requirements.txt;do
sleep 1
done
gunicorn --bind=0.0.0.0:8000 --chdir=/home/site/wwwroot/VulnerableWebApp/ VulnerableWebApp.wsgi
