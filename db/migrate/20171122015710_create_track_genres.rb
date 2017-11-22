class CreateTrackGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :track_genres do |t|
      t.references :track, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
