FROM techlab-nlp-cpu-jupyterlab:v0.2

USER root
RUN apt-get update
WORKDIR /

#comejisyoと万病辞書をinstall
USER 1000
RUN pip install transformers==4.20.1 parlai
WORKDIR /home/jovyan
