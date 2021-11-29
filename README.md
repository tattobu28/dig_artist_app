# テーブル設計
## artistsテーブル
| Column              | Type        | Options                   |
|---------------------|-------------|---------------------------|
| ID                  | string      | null: false, unique: true |
| name                | string      | null: false               |
| member              | string      | null: false               |
| info                | text        | null: true                |
| city                | integer     | null: false               |
| genre               | integer     | null: false               |
| e-mail              | string      | null: true                |
| website             | string      | null: true                |
| twitter             | string      | null: true                |
| instagram           | string      | null: true                |
| encrypted_password  | string      | null: false               |
## Association
* has_many :songs

# songsテーブル
| Column              | Type        | Options                        |
|---------------------|-------------|--------------------------------|
| title               | string      | null: false                    |
| info                | text        | null: true                     |
| writer              | string      | null: false                    |
| composer            | string      | null: false                    | 
| lyrics              | text        | null: false                    |
| user                | references  | null: false, foreign_key: true |
## Association
* belongs_to :user