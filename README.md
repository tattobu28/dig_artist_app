# アプリ名
DIG ARTIST

# 概要
アーティスト登録したアーティストが、自分たちの楽曲、MV(YouTube)をアップロード、編集、削除することが出来る。
登録していないユーザー(リスナー)は、登録されているアーティストの情報や楽曲、MVを視聴、閲覧、ダウンロード(楽曲のみ)、シェア(Twitter,Facebook)をすることが出来る。
また、アーティスト、楽曲、MVはランキングで見ることができ、
アーティストはフリーワードやジャンル、地域で検索することが出来る。

# 本番環境
URL:

ログイン情報(テスト用)
・Eメール  test@email.com
・パウワード  aaa111

# 製作背景(意図)
アマチュアやインディーズで頑張っているアーティストの中にも
素晴らしいアーティストや楽曲があることを多くの人に知ってもらえる機会を
少しでも多くすることが出来ればと思い、作りました。
また、昔ライブ出演時にCDを手配りしていた時代を思い出しCDを聴く環境が限りなくないこの時代の中では、
ファン獲得には繋がらないと思い、URLを渡しダウンロードするだけでいつでも聴けるようにしたいと思いました。

# DEMO
## トップページ
[![Image from Gyazo](https://i.gyazo.com/006e02cb3e8259d5dc10ce758b484aa3.gif)](https://gyazo.com/006e02cb3e8259d5dc10ce758b484aa3)

上からNew Songs、New Artists、New MusicVideoを新着順で左から表示しております。

## トップページ(フリーワード検索)
[![Image from Gyazo](https://i.gyazo.com/c5dd79164bb0bc2bf43f2d5f1576dca9.gif)](https://gyazo.com/c5dd79164bb0bc2bf43f2d5f1576dca9)

検索したいワードを入力し、searchボタンをクリックするとそのワードが入っているアーティストが検索結果として表示されます。
また「test guiter」のように文字と文字の間に半角スペース空けることで複数のワードで検索する事が出来ます。

## トップページ(ジャンル検索)
[![Image from Gyazo](https://i.gyazo.com/d6d0e4adaf8cec4ef4f0d39a9b6f3163.gif)](https://gyazo.com/d6d0e4adaf8cec4ef4f0d39a9b6f3163)

検索したいジャンルをクリックするとそのジャンルで登録されているアーティストが表示されます。

## トップページ(地域検索)
[![Image from Gyazo](https://i.gyazo.com/0ea238ce1d34d112b3fdd4594a32e464.gif)](https://gyazo.com/0ea238ce1d34d112b3fdd4594a32e464)

検索したい地域をクリックするとその地域で登録されているアーティストが表示されます。

## ランキング表示ページ
[![Image from Gyazo](https://i.gyazo.com/22053680abf7b3b344d62c2e50de818e.gif)](https://gyazo.com/22053680abf7b3b344d62c2e50de818e)

アーティスト、楽曲、MV別でランキングを表示されます。

## アーティスト新規登録ページ
[![Image from Gyazo](https://i.gyazo.com/e0b6b4aedf65cdd28627598b44e75df2.gif)](https://gyazo.com/e0b6b4aedf65cdd28627598b44e75df2)

必須項目を入力し、新規登録ボタンをクリックするとアーティスト登録が出来ます。

## アーティスト詳細ページ


## アーティスト編集、削除ページ

## 楽曲アップロードページ
[![Image from Gyazo](https://i.gyazo.com/1cafd5ebf6089fea7a1c3a141951eaf3.gif)](https://gyazo.com/1cafd5ebf6089fea7a1c3a141951eaf3)

必須項目を入力し、「保存する」ボタンをクリックすると楽曲を登録する事が出来ます。

## 楽曲詳細ページ
[![Image from Gyazo](https://i.gyazo.com/43fb0e3bcff19c70ed4ddd9053490ec7.gif)](https://gyazo.com/43fb0e3bcff19c70ed4ddd9053490ec7)

楽曲を視聴、ダウンロード、シェアする事が出来ます。
入力された項目が表示され、任意の項目は入力されていなければ表示されません。
アップロードしたアーティストであれば編集、削除ボタンが表示されます。

## 楽曲編集、削除ページ
[![Image from Gyazo](https://i.gyazo.com/4c2b9a2f70490e5773d97c0179035e8b.gif)](https://gyazo.com/4c2b9a2f70490e5773d97c0179035e8b)

編集したい項目を入力し「保存する」ボタンをクリックすると編集した情報が保存できます。

## MVアップロードページ

## MV詳細ページ 

## MV編集、削除ページ


# 工夫したポイント

# 使用技術(開発環境)
## バックエンド
Ruby , Ruby on Rails

## フロントエンド
CSS , JavaScript , Ajax

## データベース
MySQL , SequelPro

## インフラ

## Webサーバー(本番環境)

## アプリケーションサーバー(本番環境)

## ソース管理
GitHub , GitHub Desktop

## テスト
Rspec

## エディタ
VSCode

# 課題や今後実装したい機能
・アーティスト詳細ページや楽曲、MV詳細ページのQRコード作成機能

# DB設計
## artistsテーブル
| Column              | Type        | Options                   |
|---------------------|-------------|---------------------------|
| artist_id           | string      | null: false, unique: true |
| name                | string      | null: false               |
| member              | string      | null: false               |
| info                | text        | null: true                |
| city                | integer     | null: false               |
| genre               | integer     | null: false               |
| e-mail              | string      | null: false               |
| website             | string      | null: true                |
| twitter             | string      | null: true                |
| instagram           | string      | null: true                |
| encrypted_password  | string      | null: false               |
## Association
* has_many :songs
* has_many :youtubes

# songsテーブル
| Column              | Type        | Options                        |
|---------------------|-------------|--------------------------------|
| title               | string      | null: false                    |
| info                | text        | null: true                     |
| writer              | string      | null: false                    |
| composer            | string      | null: false                    | 
| lyric               | text        | null: false                    |
| user                | references  | null: false, foreign_key: true |
## Association
* belongs_to :user

# youtubesテーブル
| Column              | Type        | Options                        |
|---------------------|-------------|--------------------------------|
| url                 | string      | null: false                    |
| title               | string      | null: false                    |
| info                | text        | null: true                     |
| writer              | string      | null: false                    |
| composer            | string      | null: false                    | 
| lyric               | text        | null: false                    |
| user                | references  | null: false, foreign_key: true |
## Association
* belongs_to :user