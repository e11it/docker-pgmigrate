FROM python:3.11

RUN set -ex && apt-get update && apt-get install -y --no-install-recommends \
  libpq-dev \
  && rm -rf /var/lib/apt/lists/* \
  && pip install psycopg2-binary yandex-pgmigrate

COPY ./pgmigrate.py /usr/local/lib/python3.11/site-packages/pgmigrate.py
CMD ["pgmigrate"]
