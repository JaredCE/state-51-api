class CreateReleaseFormats < ActiveRecord::Migration[5.1]
  def change
    create_table :release_formats do |t|
      t.string :format

      t.timestamps
    end
  end
end
