class CreateProductTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :product_tracks do |t|
      t.references :product, foreign_key: true
      t.references :track, foreign_key: true

      t.timestamps
    end
  end
end
