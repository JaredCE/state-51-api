class CreateTrackPublishers < ActiveRecord::Migration[5.1]
  def change
    create_table :track_publishers do |t|
      t.string :publisher

      t.timestamps
    end
  end
end
