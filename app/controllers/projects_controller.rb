class ProjectsController < ApplicationController

  before_filter :authenticate_user!
  before_filter :initialize_github
  def index
    @projects = current_user.projects
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
		@user = current_user
	end

  private

  def initialize_github
    @github = Github.new do |opts|
      opts.user = "revol-tech"
      opts.repo = "revol-tech.github.com.np"
      opts.login = "revol-tech"
      opts.password = "bhaktapur11"
    end
  end
end
