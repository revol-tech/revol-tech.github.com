class AddTimeToTimeTracking < ActiveRecord::Migration
  def change
    add_column :time_trackings, :time, :decimal
  end
end
