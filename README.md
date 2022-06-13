# 概要
***
  本アプリは、体づくりをする為に作ったアプリです。
  このアプリによって解決したいことは、以下の通りです。

  <解決したい問題>
  - 自分の体力レベルに合った種目を知りたい
  - 今やっている種目がどこを刺激し、どんな作用をするものなのかが分からない
  - 一人だけでは続けられない

#### 作成した理由
  ボディメイクをする際に重要なことのひとつとして、「目標を実現するためには、現在の自分の体力レベルや生活習慣などに合った種目を行うこと」が挙げられます。しかし、youtubeやinstagramなどのSNSが普及した現代では、我流でボディメイクを成功させた方々が発信する情報が存在します。SNSは、たくさんの情報を手軽に得られるという長所がありますが、前提として必要な知識や条件を説明しない状態で種目やサプリメントなどの情報をおすすめするので、本当に必要なことではないことを実践してしまうという短所があります。そこで、これからボディメイクをはじめようとしているトレーニング初心者から中級者の方々に向けて、「体づくりをする為に必要な情報をお届けできるアプリを作りたい」と思い、このアプリを作成いたしました。

### URL
***
  http://will-fitness.herokuapp.com/

### テスト用アカウント

  - Basic認証ID: kura
  - Basic認証パスワード: 1001
  - メールアドレス: sample@ne.jp
  - パスワード: sample10

## 実装した機能
***

  1. ユーザー管理機能
  - 新規登録機能
  - ログイン機能
  - ログアウト
  - マイページ

  2. 体づくりの情報を管理する機能
  - 投稿機能
    ＜何も入力していない状態の投稿ページ＞
    [![Image from Gyazo](https://i.gyazo.com/916b3b4116218b03e2aae338dbc6d655.gif)](https://gyazo.com/916b3b4116218b03e2aae338dbc6d655)
    ***
    ＜必要な情報を入力して、投稿ボタンを押した時の挙動＞
    [![Image from Gyazo](https://i.gyazo.com/8b7f142dc0c0e6a24c5b3a260fdc12da.gif)](https://gyazo.com/8b7f142dc0c0e6a24c5b3a260fdc12da)
    ***
  - 一覧表示機能
    [![Image from Gyazo](https://i.gyazo.com/c06cebf0e0f488695e33c619c54b6a8f.gif)](https://gyazo.com/c06cebf0e0f488695e33c619c54b6a8f)
    ***
  - 詳細表示機能
    [![Image from Gyazo](https://i.gyazo.com/13e946802f5ac7d36154c798330702ef.gif)](https://gyazo.com/13e946802f5ac7d36154c798330702ef)
    ***
  - 編集機能
    [![Image from Gyazo](https://i.gyazo.com/644a898d4ee632279a7a048f5dbbeff9.gif)](https://gyazo.com/644a898d4ee632279a7a048f5dbbeff9)
    ***
  - 削除機能
    [![Image from Gyazo](https://i.gyazo.com/34d1fdc02c4bbfca87d11d1842ad18c5.gif)](https://gyazo.com/34d1fdc02c4bbfca87d11d1842ad18c5)
    ***
  - 詳細ページから投稿した情報に対してコメントができる機能
    [![Image from Gyazo](https://i.gyazo.com/5cedb489cec62d9ab3f70fe66162ca8e.gif)](https://gyazo.com/5cedb489cec62d9ab3f70fe66162ca8e)
    ***

  3. 新規登録・ログインページ以外の全てのページからページからSNS(Twitter, Facebook, Instagram, YouTube)へ遷移できる機能
  - (ex.トップページや記事を投稿・編集する画面、カレンダー画面など)

  4. 目標管理機能
  - 投稿機能
  - 一覧表示機能
  - 詳細表示機能
  - 編集機能
  - 削除機能

  5. カレンダー機能
  - トレーニング（トレーニングした部位、トレーニング内容）の管理
  - トレーニングデータをグラフ化
  - 体重・体脂肪量・筋肉量の情報を記録し、グラフ化

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

#　データベース設計
***

[![Image from Gyazo](https://i.gyazo.com/3bcedf1627be93e31c6d5d8019e2b059.png)](https://gyazo.com/3bcedf1627be93e31c6d5d8019e2b059)

# 画面遷移図
***

[![Image from Gyazo](https://i.gyazo.com/89a2d139b6d3458867484429aa7d19e9.png)](https://gyazo.com/89a2d139b6d3458867484429aa7d19e9)

