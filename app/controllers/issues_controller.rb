class IssuesController < ApplicationController
  def new
  end

  def edit
  end

  def show
    @comments = Project.find(params[:project_id]).get_comments(Integer(params[:id]))
  end

  def destroy
  end

  def update
  end

  def index
  end

  def create
  end

end
