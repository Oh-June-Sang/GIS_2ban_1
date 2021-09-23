FROM python:3.9.0

WORKDIR /home/

RUN echo 'SDLFKldskfm'

RUN git clone https://github.com/Oh-June-Sang/GIS_2ban_1.git

WORKDIR /home/GIS_2ban_1

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=djangoProject.settings.deploy && python manage.py migrate --settings=djangoProject.settings.deploy && gunicorn --env DJANGO_SETTINGS_MODULE=djangoProject.settings.deploy djangoProject.wsgi --bind 0.0.0.0:8000"]


