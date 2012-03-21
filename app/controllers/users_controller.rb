class UsersController < ApplicationController
def update
	      @user = User.find(params[:id])
        @user.name = params[:user][:name]
        @user.organization = params[:user][:organization]
        @user.address = params[:user][:address]
        @user.phone_no = params[:user][:phone_no]
        @user.save!
        redirect_to projects_user_info_path, :notice => "NewsAndEvent updated successfully!"
end
end
