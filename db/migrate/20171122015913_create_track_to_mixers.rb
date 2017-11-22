class CreateTrackToMixers < ActiveRecord::Migration[5.1]
  def change
    create_table :track_to_mixers do |t|
      t.references :track, foreign_key: true
      t.references :trackmixer, foreign_key: true

      t.timestamps
    end
  end
end
