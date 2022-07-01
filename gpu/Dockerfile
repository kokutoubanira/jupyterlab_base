FROM kokutoubanira/techlab-nlp-gpu-jupyterlab:v1.0

RUN pip install -U requests
RUN pip install jaxlib==0.3.10
COPY /requirements4.txt /
RUN pip install -r /requirements4.txt

COPY /trdg-1.7.0-py3-none-any.whl /
RUN pip install --no-deps /trdg-1.7.0-py3-none-any.whl

RUN mkdir bydic && cp -r /dic/ComeJisyoUtf8-3.dic ./bydic && cp -r /dic/MANBYO/MANBYO_201907_Dic-utf8.dic ./bydic

WORKDIR /home/jovyan


