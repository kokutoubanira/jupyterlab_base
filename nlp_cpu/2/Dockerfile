FROM techlab-nlp_cpu-notebook:v0.1

USER root
RUN apt-get update
WORKDIR /
# mecabの導入


#comejisyoと万病辞書をinstall

USER 1000
COPY ./requirements.txt /
RUN pip install -r /requirements.txt
WORKDIR /home/jovyan


