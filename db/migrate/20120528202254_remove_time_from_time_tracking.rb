class RemoveTimeFromTimeTracking < ActiveRecord::Migration
  def up
    remove_column :time_trackings, :time
  end

  def down
    add_column :time_trackings, :time, :string
  end
end
