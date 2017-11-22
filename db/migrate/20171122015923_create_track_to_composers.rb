class CreateTrackToComposers < ActiveRecord::Migration[5.1]
  def change
    create_table :track_to_composers do |t|
      t.references :track, foreign_key: true
      t.references :trackcomposer, foreign_key: true

      t.timestamps
    end
  end
end
