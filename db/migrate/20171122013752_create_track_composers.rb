class CreateTrackComposers < ActiveRecord::Migration[5.1]
  def change
    create_table :track_composers do |t|
      t.string :composer

      t.timestamps
    end
  end
end
