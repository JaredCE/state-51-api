class CreateTrackMixers < ActiveRecord::Migration[5.1]
  def change
    create_table :track_mixers do |t|
      t.string :mixer

      t.timestamps
    end
  end
end
