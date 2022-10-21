FROM python:3.8
LABEL maintainer="Kosmopy"

WORKDIR /usr/src/app

COPY ./techtrends/requirements.txt ./

RUN pip install -r requirements.txt

COPY ./techtrends ./

RUN python init_db.py

EXPOSE 3111

CMD [ "python", "app.py" ]
