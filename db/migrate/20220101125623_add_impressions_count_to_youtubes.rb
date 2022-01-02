class AddImpressionsCountToYoutubes < ActiveRecord::Migration[6.0]
  def change
    add_column :youtubes, :impressions_count, :integer, default: 0
  end
end
