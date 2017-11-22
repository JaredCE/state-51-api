class CreateTrackToPublishers < ActiveRecord::Migration[5.1]
  def change
    create_table :track_to_publishers do |t|
      t.references :track, foreign_key: true
      t.references :trackpublisher, foreign_key: true

      t.timestamps
    end
  end
end
