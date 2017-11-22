class CreateCopyrightHolders < ActiveRecord::Migration[5.1]
  def change
    create_table :copyright_holders do |t|
      t.string :holder

      t.timestamps
    end
  end
end
