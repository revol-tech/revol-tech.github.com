class AttendancesController < ApplicationController
  def new
      @attendance = Attendance.new
  end

  def index
  end

  def create
    @employee = Employee.find_by_name(params[:name])
    if @employee.try(:attendance_password) == params[:attendance_password]
    	@attendance = Attendance.find_by_date(Date.today)
    	if @attendance.nil?
      	@employee.attendances.create(:date_time => DateTime.now,:date=>Date.today)
      	redirect_to :back, :notice => "Your have been logged for today! Happy Coding!!"
      else
				redirect_to :back, :notice => "You have already logged in for today!!"
 			end     	
    else
      redirect_to :back, :notice => "Invalid Credentials!"
    end
  end

  def update
  end

  def show
  end

  def edit
  end

end
