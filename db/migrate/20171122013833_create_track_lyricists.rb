class CreateTrackLyricists < ActiveRecord::Migration[5.1]
  def change
    create_table :track_lyricists do |t|
      t.string :lyricist

      t.timestamps
    end
  end
end
