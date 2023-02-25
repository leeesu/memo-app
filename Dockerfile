FROM python:3.8-slim AS builder

ADD requirements.txt requirements.txt

RUN pip install -r requirements.txt

FROM python:3.8-slim-buster
COPY --from=builder /usr/local/lib/python3.8/site-packages /usr/local/lib/python3.8/site-packages

ADD templates templates

ADD app.py .
docker run -d -p "\Users\USER\Desktop\dev\sparta-docker\memo-app\templates":\templates 80:5000 -v breadbeardog/docker-memo:version2
CMD ["python", "app.py"]