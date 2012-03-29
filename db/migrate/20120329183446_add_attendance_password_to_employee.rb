class AddAttendancePasswordToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :attendance_password, :string
  end
end
