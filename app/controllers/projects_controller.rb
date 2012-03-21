class ProjectsController < ApplicationController

  before_filter :authenticate_user!
#  layout "admin"

  def index
    @projects = Project.all
     @user = User.all
     @user = current_user
  end

  def show
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def new
  end

  def update
  end

	def user_info	
		@users = User.all
		@users = current_user
	end
end
