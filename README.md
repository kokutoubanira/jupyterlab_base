# jupyterlab_base

## Dockerfile
```=yaml
FROM jupyter/datascience-notebook:lab-3.3.4
# tensorboardは2.0から3.0の間

USER root
RUN apt-get update

USER 1000
RUN conda update -n base conda && conda install pytorch==1.10.0 torchvision==0.11.0 torchaudio==0.10.0 -c pytorch
COPY ./requirements.txt /
RUN pip install -r /requirements.txt
```

```=requirements.txt
torchtext==0.11.0
tensorflow==2.9.1
neural_structured_learning
tensorflow_decision_forests
xgboost==1.6.1
LightGBM==3.3.2
keras==2.9.0
drawdata==0.2.0
sql==2022.4.0
pymssql==2.2.5
onnx==1.12.0
autoviz==0.1.41
monorepo==0.1.0
networkx==2.8.4
elasticsearch
dgl
pdfminer.six==20211012
python-pptx==0.6.21
python-docx==0.8.11
openpyxl==3.0.9
xlrd==2.0.1
```

```
cat /etc/os-release
NAME="Ubuntu"
VERSION="20.04.4 LTS (Focal Fossa)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 20.04.4 LTS"
VERSION_ID="20.04"
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
VERSION_CODENAME=focal
UBUNTU_CODENAME=focal
```

以下はすべてのコンテナで共通

## インストール済みライブラリ
下記参照
<a href="lib_list">リスト</a>

## 機械学習系ライブラリ

### pytorch 

- torchaudio
- torchtext
- torchvision

### tensorflow

tensorflow-gpuはGPU版でinstall

### XGBoost

### LightGBM

### Keras

###  drawdata
この小さなPythonアプリを使用すると、jupyterノートブックにデータセットを描画できます。これは、機械学習アルゴリズムを教えるときに非常に役立ちます。
https://github.com/koaning/drawdata

### Autoviz
AutoVizは、1行のコードで任意のデータセットの自動視覚化を実行します。任意のサイズの入力ファイル（CSV、txt、またはjson形式）を指定すると、マシンのメモリ制限の範囲内で設定max_rows_analyzedおよび設定を行うと、AutoVizがそれを視覚化します。max_cols_analyzed
https://github.com/AutoViML/AutoViz

### Mito
Mitoは、JupyterLabノートブック内にあるスプレッドシートです。これにより、ExcelファイルのようにPandasデータフレームを編集でき、各編集に対応するPythonコードが生成されます。

https://github.com/mito-ds/monorepo

### networkx
グラフ、有向グラフ、およびマルチグラフのデータ構造
多くの標準的なグラフアルゴリズム
ネットワーク構造と分析手段
古典的なグラフ、ランダムグラフ、および合成ネットワーク用のジェネレータ
ノードは「何でも」（テキスト、画像、XMLレコードなど）にすることができます
エッジは任意のデータ（重み、時系列など）を保持できます
オープンソースの3条項BSDライセンス
90％以上のコードカバレッジで十分にテスト済み
Pythonのその他の利点には、ラピッドプロトタイピング、教えやすい、マルチプラットフォームなどがあります。

## Elasticsearch Python Client
特徴
- 基本的なPythonデータ型をJSONとの間で変換する
- クラスターノードの構成可能な自動検出
- 持続的接続
- 利用可能なノード間での負荷分散（プラグイン可能な選択戦略を使用）
- 失敗した接続ペナルティ（時間ベース-失敗した接続はタイムアウトに達するまで再試行されません）
- TLSおよびHTTP認証のサポート
- リクエスト間のスレッドセーフ
- プラグ可能なアーキテクチャ
- APIを慣用的に一緒に使用するためのヘルパー関数

### onnx

### DGL

DGLは、グラフでディープラーニングを行うための使いやすく高性能でスケーラブルなPythonパッケージです。DGLはフレームワークに依存しません。つまり、ディープグラフモデルがエンドツーエンドアプリケーションのコンポーネントである場合、残りのロジックはPyTorch、Apache MXNet、TensorFlowなどの主要なフレームワークに実装できます。

## Install

```
LightGBM-3.3.2 
XlsxWriter-3.0.3 
absl-py-1.1.0 
astunparse-1.6.3 
autoviz-0.1.41 
cachetools-5.2.0 
chardet-4.0.0 
colorcet-3.0.0 
dgl-0.6.1 
drawdata-0.2.0
elastic-transport-8.1.2 
elasticsearch-8.2.3 
emoji-1.7.0 
et-xmlfile-1.1.0 
flatbuffers-1.12 
gast-0.4.0 
google-auth-2.8.0 
google-auth-oauthlib-0.4.6 
google-pasta-0.2.0 
grpcio-1.47.0 
holoviews-1.14.9 
hvplot-0.8.0 
jupyter-1.0.0 
jupyter-console-6.4.4 
keras-2.9.0 
keras-preprocessing-1.1.2 
libclang-14.0.1 
lxml-4.9.0 
markdown-3.3.7 
monorepo-0.1.0 
networkx-2.8.4 
neural_structured_learning-1.3.1 
nltk-3.7 
onnx-1.12.0 
openpyxl-3.0.9 
opt-einsum-3.3.0 
panel-0.12.7 
param-1.12.2 
pdfminer.six-20211012 
protobuf-3.19.4 
pyamg-4.2.3 
pyasn1-0.4.8 
pyasn1-modules-0.2.8 
pyct-0.4.8 
pymssql-2.2.5 
python-docx-0.8.11 
python-pptx-0.6.21 
pyviz-comms-2.2.0 
qtconsole-5.3.1 
qtpy-2.1.0 
regex-2022.6.2 
requests-oauthlib-1.3.1 
rsa-4.8 
setuptools-60.10.0 
sql-2022.4.0 
tensorboard-2.9.1 
tensorboard-data-server-0.6.1 tensorboard-plugin-wit-1.8.1 
tensorflow-2.9.1 
tensorflow-estimator-2.9.0 tensorflow-io-gcs-filesystem-0.26.0 tensorflow_decision_forests-0.2.6 
termcolor-1.1.0 
textblob-0.17.1 
torchtext-0.11.0 
werkzeug-2.1.2 
wordcloud-1.8.1 
wrapt-1.14.1 
wurlitzer-3.0.2 
xgboost-1.6.1
```