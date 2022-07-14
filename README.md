# usersテーブル
| Column              | Type   | Options                   |
| ------------------  | ------ | -----------               |
| nickname            | string | null: false               |
| email               | string | null: false, unique: true |
| encrypted_password  | string | null: false               |

### Association
has_many :tweets
has_many :comments

# tweetsテーブル
| Column             | Type       | Options                        |
| ------------------ | ------     | -----------                    |
| title              | string     | null: false                    |
| material           | text       | null: false                    |
| guide              | text       |                                |
| recipe             | text       | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association
belongs_to :user
has_many :comments

# アプリケーション名
recipe tweet

# アプリケーション概要
自分で作ったレシピをシェアし、簡単に見れることで、料理を早く作ることができる

# URL
https://recipe-tweet.herokuapp.com/

# テスト用アカウント
・メールアドレス　：　test@test.com
・パスワード　：　test12

# 利用方法
## レシピ投稿
1．トップページ（一覧ページ）のヘッダーからユーザー登録を行う
2．新規レシピ投稿ボタンから、レシピの内容（料理名、食材、参考サイト、画像）を入力し投稿する

### レシピを見る
1．一覧ページからレシピをクリックして、レシピの詳細を確認する
2．投稿したレシピから料理名または食材でレシピを検索することができる

#### アプリケーションを作成した背景
私の母がご飯を作るときに、レシピサイトから以前作ったことのあるレシピを探すのにいつも時間がかかっているのを見て、もっと簡単にレシピを保存しておけるアプリがあったらいいのになと思っていた。このことから、作ったレシピを簡単な操作で投稿し、見られるアプリを開発することにした。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1gDPUyJbg0L_VJyW5bfRqTu4gC2Qoislywy732T847gQ/edit?usp=sharing

# 実装した機能についての画像やGIFおよびその説明
・レシピの内容（料理名、食材、参考サイト、画像）を入力して、保存するボタンを押すと、レシピが保存される
[![Image from Gyazo](https://i.gyazo.com/329b5be0b0e48513d53ba29326e7897b.gif)](https://gyazo.com/329b5be0b0e48513d53ba29326e7897b)
・料理名または食材を入力して検索ボタンを押すと、検索したワードがヒットするレシピが表示される
[![Image from Gyazo](https://i.gyazo.com/1c117de5ca2e07255b640ecc693bb71f.gif)](https://gyazo.com/1c117de5ca2e07255b640ecc693bb71f)

# 実装予定の機能
現在、リンク機能を実装中。
今後は、参考サイトに記載したURLをクリックすると、リンク先に移動できるリンク機能を実装予定。

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/a1cddeffbeda8cf35d93beb6bda50c6d.png)](https://gyazo.com/a1cddeffbeda8cf35d93beb6bda50c6d)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/af9c6e1a27e081ef03b3624cf1c395f7.png)](https://gyazo.com/af9c6e1a27e081ef03b3624cf1c395f7)

# 開発環境
・フロントエンド
・バックエンド

# ローカルでの動作方法
以下のコマンドを順に実行。
% git clone https://github.com/kazu-oku1/recipetweet.git
% cd recipetweet
% bundle install
% yarn install

# 工夫したポイント
レシピサイトのURLを入力することによって、投稿したレシピサイトのURLを検索すれば、
レシピの材料や作り方を入力せずにレシピを投稿できるように工夫をしました。