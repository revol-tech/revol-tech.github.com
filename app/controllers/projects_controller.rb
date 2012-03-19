class ProjectsController < ApplicationController

  before_filter :authenticate_user!
#  layout "admin"

  def index
    @projects = Project.all
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

end
