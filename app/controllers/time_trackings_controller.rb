class TimeTrackingsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def update
  end

  def create

  time=params[:time_hr].to_i+params[:time_min].to_i/60.0
    @timetracking = TimeTracking.create(:project_id => params[:project], :user_id => current_user.id,:comment => params[:comment],:time => time)
    @timetracking.save!
    redirect_to projects_developer_path, :notice => "Your have been logged for today! Happy Coding!!"
  end

  def new
    @projects = Project.all.to_a.keep_if {|p| p.get_developers.include?(current_user.name)}
    @timetracking =TimeTracking.new
  end

end
