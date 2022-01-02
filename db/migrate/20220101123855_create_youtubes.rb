class CreateYoutubes < ActiveRecord::Migration[6.0]
  def change
    create_table :youtubes do |t|
      
      t.string  :url,            null: false
      t.string :title,        null: false
      t.text :info,           null: false
      t.string :writer,       null: true
      t.string :composer,     null: false
      t.text :lyric,          null: true
      t.references :artist,     null: false, foreign_key: true
      t.timestamps null: false
    end
  end
end
