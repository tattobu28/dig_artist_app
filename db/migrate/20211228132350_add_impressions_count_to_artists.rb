class AddImpressionsCountToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :impressions_count, :integer, default: 0
  end
end
