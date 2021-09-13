FROM python:3.9.0

WORKDIR /home/

RUN echo 'lksmaoidmf'

RUN git clone https://github.com/Oh-June-Sang/GIS_2ban_1.git

WORKDIR /home/GIS_2ban_1

RUN echo "SECRET_KEY=django-insecure-wumplgx^n@)-+%w52f0dx4+$hhi-03q-37xx372sf2*))w%ycz">.env

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash","c","python manage.py collectstatic --noinput --settings=djangoProject.settings.deploy &&python manage.py migrate --settings=djangoProject.settings.deploy && gunicorn --env DJANGO_SETTINGS_MODULE=DjangoProject.settings.deploy GIS_OH.wsgi --bind 0.0.0.0:8000"]


