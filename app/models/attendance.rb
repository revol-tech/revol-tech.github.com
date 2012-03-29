class Attendance < ActiveRecord::Base
belongs_to :employee

validates :date_time, :presence => true
end
