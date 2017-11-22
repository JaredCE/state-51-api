class CreateSoundCarriers < ActiveRecord::Migration[5.1]
  def change
    create_table :sound_carriers do |t|
      t.string :carrier

      t.timestamps
    end
  end
end
