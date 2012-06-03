class CreateTimeTrackings < ActiveRecord::Migration
  def change
    create_table :time_trackings do |t|
      t.string :time
      t.text :comment

      t.timestamps
    end
  end
end
