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