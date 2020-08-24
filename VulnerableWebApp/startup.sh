pip install django
gunicorn --workers 8 --threads 4 --timeout 60 --access-logfile \
    '-' --error-logfile '-' --bind=0.0.0.0:80  -k uvicorn.workers.UvicornWorker \
     --chdir=/home/site/wwwroot/VulnerableAzure VulnerableWebApp.wsgi
