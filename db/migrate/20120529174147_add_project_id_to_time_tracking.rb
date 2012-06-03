class AddProjectIdToTimeTracking < ActiveRecord::Migration
  def change
    add_column :time_trackings, :project_id, :integer
  end
end
