class CreateProductExcludedTerritories < ActiveRecord::Migration[5.1]
  def change
    create_table :product_excluded_territories do |t|
      t.references :product, foreign_key: true
      t.references :territory, foreign_key: true

      t.timestamps
    end
  end
end
