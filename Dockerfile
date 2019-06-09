FROM python:3.7.3-alpine3.9

ADD requirements.txt /project/

VOLUME /project

WORKDIR /project

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
