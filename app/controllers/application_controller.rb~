class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
    return projects_path unless current_user.try(:admin?)
    return rails_admin_path
  end

  def authenticate_admin
    redirect_to "http://localhost:3000" unless current_user.try(:admin?)
  end
end
