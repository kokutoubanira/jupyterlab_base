FROM techlab-base-notebookv1.0

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
COPY ./requirements.txt /
RUN pip install -r /requirements.txt
WORKDIR /home/jovyan



