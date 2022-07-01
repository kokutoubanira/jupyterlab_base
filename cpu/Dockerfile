FROM jupyter/datascience-notebook:lab-3.2.9

USER root
RUN apt-get update
RUN apt-get -y update && \
  apt-get -y upgrade && \
  apt-get install -y mecab && \
  apt-get install -y libmecab-dev && \
  apt-get install -y mecab-ipadic-utf8 && \
  apt-get install -y git && \
  apt-get install -y make && \
  apt-get install -y curl && \
  apt-get install -y xz-utils && \
  apt-get install -y file && \
  apt-get install -y sudo

# mecab-ipadic-NEologdのインストール
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git && \
  cd mecab-ipadic-neologd && \
  ./bin/install-mecab-ipadic-neologd -n -y && \
  echo dicdir = `mecab-config --dicdir`"/mecab-ipadic-neologd">/etc/mecabrc && \
  sudo cp /etc/mecabrc /usr/local/etc && \
  cd ..

#comejisyoと万病辞書をinstall
#comejisyo
RUN mkdir /dic
COPY ./ComeJisyoUtf8-3 /dic
RUN wget http://sociocom.jp/~data/2018-manbyo/data/MANBYO_201907_Dic-utf8.dic
RUN mkdir /dic/MANBYO
RUN mv MANBYO_201907_Dic-utf8.dic /dic/MANBYO/MANBYO_201907_Dic-utf8.dic

RUN pip uninstall -y tqdm

USER 1000
RUN pip3 install torch==1.10.0  torchvision==0.11.0 torchaudio==0.10.0 --extra-index-url https://download.pytorch.org/whl/cpu
COPY ./requirements1.txt / 
RUN pip install -r /requirements1.txt

COPY /requirements2.txt /
RUN pip install -r /requirements2.txt

COPY /requirements3.txt /
RUN pip install -r /requirements3.txt

RUN pip install -U requests
RUN pip install jaxlib==0.3.10

COPY /requirements4.txt /
RUN pip install -r /requirements4.txt

COPY /trdg-1.7.0-py3-none-any.whl /
RUN pip install --no-deps /trdg-1.7.0-py3-none-any.whl

RUN mkdir bydic && cp -r /dic/ComeJisyoUtf8-3.dic ./bydic && cp -r /dic/MANBYO/MANBYO_201907_Dic-utf8.dic ./bydic

WORKDIR /home/jovyan