class CreateTrackToLyricists < ActiveRecord::Migration[5.1]
  def change
    create_table :track_to_lyricists do |t|
      t.references :track, foreign_key: true
      t.references :tracklyricist, foreign_key: true

      t.timestamps
    end
  end
end
