class AddUserIdToTimeTracking < ActiveRecord::Migration
  def change
    add_column :time_trackings, :user_id, :integer
  end
end
