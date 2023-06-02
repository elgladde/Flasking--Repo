FROM python:3.9.12-buster

ENV FLASK_ENV='development'
ENV FLASK_APP='app.py'

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]