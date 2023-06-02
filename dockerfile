FROM python:3.8-slim-buster

WORKDIR /app

COPY . .
RUN pip3 install -r requirements.txt

CMD ["/bin/bash", "-c", "export FLASK_APP=hello-gke; python3 -m flask run --host=0.0.0.0"]