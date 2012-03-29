class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.datetime :date_time
      t.integer :employee_id

      t.timestamps
    end
  end
end
