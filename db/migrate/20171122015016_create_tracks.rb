class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.integer :track_no
      t.string :title
      t.string :mix
      t.string :display_artist
      t.string :isrc
      t.string :grid
      t.boolean :avail_sep
      t.integer :published_year
      t.references :publisher, foreign_key: true
      t.integer :copyright_year
      t.references :copyrightholder, foreign_key: true
      t.boolean :explicit_content

      t.timestamps
    end
  end
end
