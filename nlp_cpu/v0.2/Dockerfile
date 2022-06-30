FROM techlab-nlp-cpu-jupyterlab:v0.1

USER root
RUN apt-get update
WORKDIR /

#comejisyoと万病辞書をinstall
USER 1000
COPY ./requirements.txt /
RUN pip install -r /requirements.txt
WORKDIR /home/jovyan


