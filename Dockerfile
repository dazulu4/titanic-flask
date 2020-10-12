FROM python:3

RUN mkdir /deploy && \
    git clone https://github.com/dazulu4/titanic-flask.git /deploy/app && \
    pip3 install -r /deploy/app/requirements.txt

WORKDIR /deploy/app
EXPOSE 7001
ENV SURA_APP_PORT=7001

USER daemon

CMD ["python3", "/deploy/app/main.py"]

