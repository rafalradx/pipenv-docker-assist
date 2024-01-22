# minimalny linux z pythonem
FROM python:3.11-alpine 

ENV APP_HOME /app

WORKDIR $APP_HOME

COPY ./requirements.txt /app
RUN pip install -r requirements.txt
COPY . .
RUN cd alfred-assist-bot && python3 setup.py install
# RUN python3 setup.py install
# Kopiujemy inne pliki do katalogu roboczego kontenera

ENTRYPOINT [ "alfred-run"]
