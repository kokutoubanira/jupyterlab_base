# jupyterhub NLP Lab


## Dockerfile

base notebook: datasciense-notebook


## インストール済みライブラリ
下記参照
<a href="lib_list">リスト</a>

## 機械学習系ライブラリ

### pytorch 

### tensorflow

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

## 自然言語処理ライブラリまとめ

### nlplot
https://github.com/takapy0210/nlplot
### pyLDAvis

### NLTK
「NLTK」（Natural Language Toolkit）は、英語の自然言語処理ライブラリです。Pythonで開発されています。
主なタスクは次のとおり。

・テキスト分類
・トークン化
・ステミング
・品詞（POS）タグ付け
・テキスト構文解析
・意味論的推論

link: https://github.com/nltk/nltk

### spaCy
「spaCy」は、自然言語処理を利用する製品の多くで採用されている自然言語処理ライブラリです。PythonとCythonで開発されています。「spacy」の言語モデルは深層学習を使用して学習されています。
主なタスクは次のとおり。

・NLTK機能をカバー
・深層学習のワークフロー
・多言語サポート
・処理パイプライン
・ビジュアライザー

link: https://github.com/explosion/spaCy

### Huggingface

最先端の汎用アーキテクチャ(BERT、GPT-2など)と、100以上の言語で何千もの事前学習済みモデルを提供する自然言語処理ライブラリです。
・テキスト分類 (カテゴライズ・感情解析)
・質問応答
・言語モデル
・テキスト生成
・要約
・固有表現抽出
・翻訳

huggingface/transformers: https://github.com/huggingface/transformers
AllenNLP: https://github.com/allenai/allennlp
Fairseq: https://github.com/facebookresearch/fairseq
Fast.ai: https://github.com/fastai/fastai
torch: https://github.com/pytorch/text

### GiNZA
「GiNZA」は、オープンソースな日本語の自然言語処理ライブラリです。最先端の機械学習技術を取り入れた自然言語処理ライブラリ「spaCy」をフレームワークとして利用しており、トークン化処理に形態素解析器「SudachiPy」が使われています。

link: https://github.com/megagonlabs/ginza

### MeCab
「MeCab」は、形態素解析でテキストを「単語」に分割するツールです。

link: http://taku910.github.io/mecab/

### Janome
Janome (蛇の目; ◉) は，Pure Python で書かれた，辞書内包の形態素解析器です。

依存ライブラリなしで簡単にインストールでき，アプリケーションに組み込みやすいシンプルな API を備える形態素解析ライブラリを目指しています。

内包辞書として mecab-ipadic-2.7.0-20070801 を使っています。なお，v0.3.8+ では新元号「令和」がシステム辞書に追加されています
https://mocobeta.github.io/janome/

### SudachiPy
スダチは日本の形態素解析器です。形態素解析は、主に以下のタスクで構成されています。

セグメンテーション
品詞のタグ付け
正規化
https://github.com/WorksApplications/Sudachi

### nagisa
渚は、日本語の単語セグメンテーション/品詞タグ付けのためのPythonモジュールです。シンプルで使いやすいツールになるように設計されています。

このツールには次の機能があります。

リカレントニューラルネットワークに基づいています。
単語セグメンテーションモデルは、文字レベルおよび単語レベルの機能を使用します[池田+]。
POSタグ付けモデルはタグ辞書情報[井上+]を使用します。
詳細については、以下のリンクを参照してください。

PyCon JP（2019）のプレゼンテーションスライドはこちらから入手できます。
日本語の記事はこちらから入手できます。
ドキュメントはこちらから入手できます。
NLP Hacks（2022）のプレゼンテーションスライドは、こちらから入手できます。
https://github.com/taishi-i/nagisa

### OpenNMT
OpenNMT-pyは、オープンソース（MIT）ニューラル機械翻訳フレームワークであるOpenNMTプロジェクトのPyTorchバージョンです。翻訳、要約、形態学、および他の多くの分野で新しいアイデアを試すために、研究に適した設計になっています。一部の企業は、コードが本番環境に対応していることを証明しています。
link: https://github.com/OpenNMT/OpenNMT-py


### ParlAI
ParlAI（「par-lay」と発音）は、オープンドメインのチットチャットからタスク指向の対話、視覚的な質問応答まで、対話モデルを共有、トレーニング、およびテストするためのPythonフレームワークです。



link: https://github.com/facebookresearch/ParlAI


### SentencePiece
SentencePieceは、主にニューラルネットワークベースのテキスト生成システム用の教師なしテキストトークン化およびデトークン化であり、ニューラルモデルのトレーニングの前に語彙サイズが事前に決定されています。SentencePieceは 、サブワード単位（たとえば、バイトペアエンコーディング（BPE） [ Sennrich et al。 ]）と ユニグラム言語モデル[工藤]を実装します。]）生の文章からの直接トレーニングの拡張。SentencePieceを使用すると、言語固有の前処理/後処理に依存しない、純粋にエンドツーエンドのシステムを作成できます。
https://github.com/google/sentencepiece

### Gensim
Gensimは、トピックモデリング、ドキュメントインデックス作成 、および大規模なコーパスを使用した類似性検索のためのPythonライブラリです。ターゲットオーディエンスは、 自然言語処理（NLP）および情報検索（IR）コミュニティです。

link: https://github.com/RaRe-Technologies/gensim

### DeepPavlov
DeepPavlovは、TensorFlow、 Keras、PyTorch に基づいて構築されたオープンソースの会話型AIライブラリです。

DeepPavlovはのために設計されています

本番環境に対応したチャットボットと複雑な会話システムの開発、
NLP、特に対話システムの分野での研究。

link: https://github.com/deepmipt/DeepPavlov

### clean-text
Webやソーシャルメディアでユーザーが作成したコンテンツは、汚いことがよくあります。でスクレイピングされたデータを前処理clean-textして、正規化されたテキスト表現を作成します。

link https://github.com/jfilter/clean-text

## Install