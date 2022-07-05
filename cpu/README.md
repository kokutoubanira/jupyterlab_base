# jupyterhub NLP Lab


## Dockerfile

base notebook: datasciense-notebook
```=yaml


```


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


### clean-text
Webやソーシャルメディアでユーザーが作成したコンテンツは、汚いことがよくあります。でスクレイピングされたデータを前処理clean-textして、正規化されたテキスト表現を作成します。

link https://github.com/jfilter/clean-text

### pysummarization
このライブラリの機能は、一種の自然言語処理とニューラルネットワーク言語モデルを使用した自動要約です。このライブラリを使用すると、テキストクラスタリングによってフィルタリングされた元のドキュメントまたはWebスクレイピングされたテキストの主要なポイントを含む要約を作成できます。また、このライブラリは、accel-brain-baseを適用して、LSTMに基づくエンコーダー/デコーダーを実装し、シーケンス間（Seq2Seq）学習による要約の精度を向上させます。

このライブラリは、オートエンコーダとして構造化されたTransformerのベータ版である元のモデルを使用してドキュメントトピックを抽出する機能も実装しています。

### sumy
HTMLページまたはプレーンテキストから要約を抽出するためのシンプルなライブラリとコマンドラインユーティリティ。このパッケージには、テキスト要約の簡単な評価フレームワークも含まれています。実装された要約メソッドは、ドキュメントで説明されています。また、さまざまなプログラミング言語でのサマライザーの代替実装のリストも保持しています。

##　辞書

### mecab-ipadic-NEologd
mecab-ipadic-NEologdは、MeCab用にカスタマイズされたシステム辞書です。

この辞書には、Web上の多くの言語リソースから抽出された多くの造語（新しい単語）が含まれています。

Webドキュメントを分析するときは、このシステムディクショナリとデフォルトのディクショナリ（ipadic）を一緒に使用することをお勧めします。

### 万病辞書

医療文書から病名を抽出する処理は，これまで医療言語処理分野の研究では盛んに行われてきました．病名抽出にはICDのような標準規格で規定された病名を用いることがほとんどでした．しかし，実際の医療現場では，正式名称ではなく略記や英語名を用いることが少なくありません．そのため，定型的な病名コードだけでは症状や病名に関する情報をすべて抽出したいといった要望には応えることができません．
そこで，ソーシャル・コンピューティング研究室では，医療従事者が記載した電子カルテや退院サマリから，症状や病名に関連する語を広く抽出したデータを作成し，"万病辞書"と名付けました． 本サイトでは，万病辞書ならびに関連データを公開していますので，ご自由にご利用ください．
なお，英語での紹介ページは， English page をご覧ください．

http://sociocom.jp/~data/2018-manbyo/index.html

### ComeJisyo

医療記録の分かち書きを支援するために実践医療用語辞書ComeJisyoと、分かち書き結果から合成語を生成するツール

### 患者表現辞書
医療者向けの辞書は多く存在しますが，患者が用いる表現については，これまで体系だったリソースが存在しませんでした． そこで，ソーシャル・コンピューティング研究室では，クラウドソーシングを用いて患者表現を収集し，辞書化しています． 本サイトでは，辞書ならびに関連データを公開していますので，ご自由にご利用ください．

http://sociocom.jp/~data/2019-pde/

### 日本語抽象度辞書

ある物事をどのように表現するのか．
これは，私たちの生活のさまざまな状況で直面する問題のひとつです．
たとえば，移動中にペンを落としてしまったとします．
電話で忘れ物センターで問い合わせる際，「文房具」というと抽象的なのに対し，「白い 3 色ボールペン」というと具体的で，担当者も探しやすそうです．
ある物事を，どのくらい抽象的もしくは具体的に表現するかは，たんに表現上の問題であるだけでなく，表現対象をどのように捉えているのか，また，表現を受け取る人がどのように理解すると考えているのかといった，認知プロセス上の問題でもあります．
表現の抽象性／具体性を数値化すれば，こうした問題を探究する大きな手がかりとなるはずです．

しかし，これまで，英語を対象に抽象度を付与したリソースは多数存在しましたが [1, 2, 3, 4]，日本語を対象にした大規模なリソースは存在しませんでした．
そこで，ソーシャル・コンピューティング研究室では，15,220 語の日本語語彙について抽象度を付与した日本語抽象度辞書（AWD-J core）を構築しました．
また，これをベースに，より大規模に抽象度の推定を行ったリソース（AWD-J EX）も合わせて公開しています．

http://sociocom.jp/~data/2019-AWD-J/

## Install