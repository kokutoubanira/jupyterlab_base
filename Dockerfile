FROM jupyter/datascience-notebook:lab-3.2.9

USER root
RUN apt-get update

USER 1000
RUN conda update -n base conda && conda install pytorch==1.10.0 torchvision==0.11.0 torchaudio==0.10.0 -c pytorch
COPY ./requirements.txt /
RUN pip install -r /requirements.txt



