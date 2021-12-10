class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|

      t.string :title,        null: false
      t.text :info,           null: false
      t.string :writer,       null: true
      t.string :composer,     null: false
      t.text :lyric,          null: true
      t.references :artist,     null: false, foreign_key: true
      t.string :file,        null: false
      t.timestamps null: false
    end
  end
end
