FROM python:3.7.3-stretch

WORKDIR /app

COPY ./requirements.txt /app
RUN pip install -r requirements.txt

COPY . /app

EXPOSE 80

CMD ["python", "app.py"]
