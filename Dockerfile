FROM python:3

WORKDIR /app
ADD ./requirements.txt /app/
RUN pip install -r requirements.txt

CMD ["python", "manage.py", "runserver", "0:8000"]