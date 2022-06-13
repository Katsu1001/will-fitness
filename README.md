# アプリケーション名
***
  Will

# 概要
***
  本アプリは、体づくりをする為に作ったアプリです。
  このアプリによって解決したいことは、以下の通りです。

  ### <解決したい問題>
  - 成果が出ない
  - 目標が定まらない
  - ひとりだと頑張れない

### 作成した理由
  _ボディメイクをする際に重要なことのひとつとして、「目標を実現するためには、現在の自分の体力レベルや生活習慣などに合った種目を行うこと」が挙げられます。しかし、youtubeやinstagramなどのSNSが普及した現代では、我流でボディメイクを成功させた方々が発信する情報が存在しており、「何が自分にとって必要な情報なのか」が分からない状態で本当に必要なことではないことを実践してしまうと、効果を感じにくいという問題があります。SNSは、たくさんの情報を手軽に得られるという長所がありますが、前提として必要となる知識や条件を説明しない状態で種目やサプリメントなどの情報をおすすめするので、本当に必要なことではないことを実践してしまうという短所があると考えています。そこで、これからボディメイクをはじめようとしているトレーニング初心者から中級者の方々に向けて、「体づくりをする為に必要な情報をお届けできるアプリを作りたい」と思い、このアプリを作成いたしました。_

## URL
***
  http://will-fitness.herokuapp.com/

## テスト用アカウント
***
  - Basic認証ID: kura
  - Basic認証パスワード: 1001
  - メールアドレス: sample@ne.jp
  - パスワード: sample10

## トップページ
***
  [![Image from Gyazo](https://i.gyazo.com/3a861e05679059416a5da8b1320cb3d4.jpg)](https://gyazo.com/3a861e05679059416a5da8b1320cb3d4)
  [![Image from Gyazo](https://i.gyazo.com/cf90539492338423720221283ff4af53.jpg)](https://gyazo.com/cf90539492338423720221283ff4af53)
  [![Image from Gyazo](https://i.gyazo.com/bc8f9049fa53f394dfde0686a42331cd.jpg)](https://gyazo.com/bc8f9049fa53f394dfde0686a42331cd)
  [![Image from Gyazo](https://i.gyazo.com/9f882e20dfc0dae6661c96f50082e56f.jpg)](https://gyazo.com/9f882e20dfc0dae6661c96f50082e56f)
  [![Image from Gyazo](https://i.gyazo.com/216c48832bff1bc5e5883a7c8ade59cf.jpg)](https://gyazo.com/216c48832bff1bc5e5883a7c8ade59cf)
  [![Image from Gyazo](https://i.gyazo.com/7634cfd532bc3717fa3d7d5f4361b841.gif)](https://gyazo.com/7634cfd532bc3717fa3d7d5f4361b841)

## 実装した機能
***

  1. ユーザー管理機能
  - 新規登録機能
  - ログイン機能
  - ログアウト
  - マイページ

  2. 体づくりの情報を管理する機能
  - 投稿機能
    [![Image from Gyazo](https://i.gyazo.com/8b7f142dc0c0e6a24c5b3a260fdc12da.gif)](https://gyazo.com/8b7f142dc0c0e6a24c5b3a260fdc12da)
    ***
  - 一覧表示機能
  - 詳細表示機能
    [![Image from Gyazo](https://i.gyazo.com/13e946802f5ac7d36154c798330702ef.gif)](https://gyazo.com/13e946802f5ac7d36154c798330702ef)
    ***
  - 編集機能
  - 削除機能
  - 詳細ページから投稿した情報に対してコメントができる機能
    [![Image from Gyazo](https://i.gyazo.com/5cedb489cec62d9ab3f70fe66162ca8e.gif)](https://gyazo.com/5cedb489cec62d9ab3f70fe66162ca8e)
    ***

  3. 新規登録・ログインページ以外の全てのページからページからSNS(Twitter, Facebook, Instagram, YouTube)へ遷移できる機能
  - (ex.トップページや記事を投稿・編集する画面、カレンダー画面など)
    [![Image from Gyazo](https://i.gyazo.com/fe07bf7b36280dee436cf9e315414709.gif)](https://gyazo.com/fe07bf7b36280dee436cf9e315414709)
    ***

  4. 目標管理機能
  - 投稿機能
  - 一覧表示機能
  - 詳細表示機能
  - 編集機能
  - 削除機能
    [![Image from Gyazo](https://i.gyazo.com/2efb0c59bf1e547350d2ec87c812d06e.gif)](https://gyazo.com/2efb0c59bf1e547350d2ec87c812d06e)
    ***

  5. カレンダー機能
  - トレーニング（トレーニングした部位、トレーニング内容）の管理
  - トレーニングデータをグラフ化
  - 体重・体脂肪量・筋肉量の情報を記録し、グラフ化
    [![Image from Gyazo](https://i.gyazo.com/b9870311aa5d9469be01709b151dbf8f.gif)](https://gyazo.com/b9870311aa5d9469be01709b151dbf8f)
    ***

  6. 検索機能
  - カテゴリー検索
  - ユーザー検索

## 今後追加予定の機能
***

  1. フォロー機能

  2. お気に入り管理機能
  - 登録機能
  - 一覧表示機能
  - 削除機能

  3. 種目をご案内する機能
  - 質疑応答機能（記述ではなく、選択肢を作る予定です。）
  - 条件分岐を利用し、質問に対する回答からその人に合った種目を選択する機能

# データベース設計
***
  [![Image from Gyazo](https://i.gyazo.com/19c32d0775bfd5600e79112b23ce9787.png)](https://gyazo.com/19c32d0775bfd5600e79112b23ce9787)

# 画面遷移図
***
  [![Image from Gyazo](https://i.gyazo.com/1a3bfa7f282a3f270933606b3507bcef.png)](https://gyazo.com/1a3bfa7f282a3f270933606b3507bcef)

