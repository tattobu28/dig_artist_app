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