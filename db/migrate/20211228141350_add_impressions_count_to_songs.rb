class AddImpressionsCountToSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :impressions_count, :integer, default: 0
  end
end
