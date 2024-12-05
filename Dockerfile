FROM python:3.8-slim-buster

WORKDIR /app

COPY challenge-analyst.py  challenge-analyst.py

RUN apt-get update \
    && apt-get -y install libpq-dev gcc \
    && pip install psycopg2 

CMD [ "python3","./challenge-analyst.py" ]

