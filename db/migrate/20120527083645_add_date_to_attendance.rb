class AddDateToAttendance < ActiveRecord::Migration
  def change
    add_column :attendances, :date, :string
  end
end
