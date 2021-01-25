FROM python:3

WORKDIR /app
ADD ./requirements.txt /app/
RUN pip install -r requirements.txt

ADD ./myapp /app/myapp
ADD ./manage.py /app/

CMD ["python", "manage.py", "runserver", "8000"]