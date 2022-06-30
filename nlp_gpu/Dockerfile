FROM techlab-gpu-datascience:latest

USER root
RUN apt-get update
WORKDIR /
# mecabの導入
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

#RUN conda update -n base conda && conda install pytorch==1.10.0 torchvision==0.11.0 torchaudio==0.10.0 cudatoolkit=11.3 -c pytorch
RUN pip3 install torch==1.10.0  torchvision==0.11.0 torchaudio==0.10.0 --extra-index-url https://download.pytorch.org/whl/cu113

COPY ./requirements1.txt / 
RUN pip install -r /requirements1.txt

COPY /requirements2.txt /
RUN pip install -r /requirements2.txt

COPY /requirements3.txt /
RUN pip install -r /requirements3.txt
RUN pip install requests

WORKDIR /home/jovyan


