class CreatePriceBands < ActiveRecord::Migration[5.1]
  def change
    create_table :price_bands do |t|
      t.string :band

      t.timestamps
    end
  end
end
