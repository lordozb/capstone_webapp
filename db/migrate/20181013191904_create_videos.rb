class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :location
      t.string :thumb
      t.integer :duration

      t.timestamps
    end
  end
end
