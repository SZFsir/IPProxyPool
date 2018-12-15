FROM python:2.7

WORKDIR /usr/src/app
COPY . .
ENV ENV DEBIAN_FRONTEND noninteractive
ENV TZ Asia/Shanghai

RUN apt-get update 
RUN apt-get install -y python-lxml

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD sh start.sh

