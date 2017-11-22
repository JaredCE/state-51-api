class CreateTrackToProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :track_to_products do |t|
      t.references :track, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
