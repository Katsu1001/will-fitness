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

#### 接続先情報
***
  <アプリのURL>
  - http://will-fitness.herokuapp.com/

  <ID/Pass>
  - ID: kura
  - Pass: 1001

#### 実装した機能
***

  1. ユーザー管理機能
  - 新規登録機能
  - ログイン機能
  - ログアウト
  - マイページ

  2. 体づくりの情報を管理する機能
  - 投稿機能
  - 一覧表示機能
  - 詳細表示機能
  - 編集機能
  - 削除機能
  - 詳細ページから投稿した情報に対してコメントができる機能

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

#### 今後追加予定の機能
***

  1. 検索機能
  - カテゴリー検索
  - ユーザー検索

  2. フォロー機能

  3. お気に入り管理機能
  - 登録機能
  - 一覧表示機能
  - 削除機能

  4. 種目をご案内する機能
  - 質疑応答機能（記述ではなく、選択肢を作る予定です。）
  - 条件分岐を利用し、質問に対する回答からその人に合った種目を選択する機能

# テーブル設計
***

## Users テーブル

  |  Column           |  Type      | Option    |
  |------------        |--------    |--------   |
  |nickname            |string      |null:false |
  |email               |string      |unique: true, null:false|
  |encrypted_password  |string      |null:false |
  |family_name         |string      |null:false |
  |first_name          |string      |null:false |
  |family_name_katakana         |string      |null:false |
  |first_name_katakana          |string      |null:false |
  |birthday            |date    |null:false|
  
  ## Association
  - has_many :information
  - has_many :To_do_lists
  - has_many :Favorites
  - has_many :tweets
  - has_many :comments


<!-- 
  ~usersテーブルが持っている情報~
1.ニックネーム
2.メールアドレス
3.パスワード（６文字以上）
  (理由:)passwordカラムは削除。deviseのgemがあらかじめ用意しているencrypted_passwordを使用しているため。
4.パスワード（確認）
5.お名前(全角)
6.お名前カナ(全角)
7.生年月日  -->

## Columns テーブル

  |  Column         |  Type     | Option    |
  |------------     |--------   |--------   |
  |name             |string     |null:false |
  |introduction     |text       |null:false |
  |category_id      |integer    |null:false |
  |part_id          |integer    |null:false |
  |user             |references | null: false, foreign_key: true |
  |favorite         |references | null: false, foreign_key: true |
  

  ## Association
  - belongs_to :user
  - has many :favorites
  - has many :to
<!-- 
  ~information テーブルが持っている情報~
1.タイトル（４０文字まで）
2.カテゴリー
3.詳細
4.ユーザー名
-->

## To do lists テーブル

  |  Column     |Type    | Option    |
  |------------ |--------|--------   |
  |purpose      |string  |null:false |
  |objective    |string  |null:false |
  |period       |string  |null:false |
  |ideal        |string  |null:false |
  |user         |references | null: false, foreign_key: true |
  |information  |references | null: false, foreign_key: true |
  
  ## Association
  - belongs_to :user

<!-- 
  ~To do lists テーブルが持っている情報~
1. 目的
2. 目標
3. いつまでに達成したいか
4. どんなイベントがあるのか
5. 気になる部位
 -->

   ## tweets テーブル

  |  Column         |  Type     | Option    |
  |------------     |--------   |--------   |
  |text             |text       |null:false |
  |category_id      |integer    | null:false |
  |user             |references | null: false, foreign_key: true |
  |comment          |references | null: false, foreign_key: true |
 
  ## Association
  - belongs_to :user
  - has_many :tweets
  <!--
  ~Tweets テーブルが持っている情報~
  1. ユーザー情報
  2. カテゴリー情報（運動、栄養、休養、その他の教養）
  3. コメント内容
  -->

 ## Comments テーブル

  |  Column         |  Type     | Option    |
  |------------     |--------   |--------   |
  |text             |text       |null:false |
  |category_id      |integer    | null:false |
  |user             |references | null: false, foreign_key: true |
  |tweet            |references | null: false, foreign_key: true |
 
  ## Association
  - belongs_to :user
  - belongs_to :tweets
  
  <!--
  ~Comments テーブルが持っている情報~
  1. ユーザー情報
  2. コメント内容
  -->

## Favorites テーブル

  |  Column        |Type    | Option    |
  |------------    |--------|--------   |
  |name            |string  |null:false |
  |user            | references | null: false, foreign_key: true |
  |information     | references | null: false, foreign_key: true |
  |Menu            | references | null: false, foreign_key: true |

  ## Association
  - belongs_to :user
  - belongs_to :information
  - belongs_to :menu
  
  <!--
  ~Favorites テーブルが持っている情報~
  1. ユーザー情報
  2. informationのタイトル
  3. Menuからお気に入り登録された種目の情報
  -->

## Menus テーブル

  |  Column        |Type    | Option    |
  |------------    |--------|--------   |
  |name            |string  |null:false |
  |detail          |text    |null:false |
  |user            | references | null: false, foreign_key: true |

  ## Association
  - belongs_to :user
  - has many :favorite
  
  <!--
  ~Favorites テーブルが持っている情報~
  1. ユーザー情報
  2. 種目のタイトル
  3. 種目の詳細
  -->