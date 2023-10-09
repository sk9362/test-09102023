FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python python-pip
RUN sudo apt install python-flask
RUN pip3 install flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0