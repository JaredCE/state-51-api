class CreateProductArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :product_artists do |t|
      t.references :product, foreign_key: true
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
