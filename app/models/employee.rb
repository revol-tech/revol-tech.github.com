class Employee < ActiveRecord::Base
has_many :attendances

validates :name, :uniqueness => true
validates :name, :presence => true
validates :role, :presence => true
validates :attendance_password, :presence => true
end
