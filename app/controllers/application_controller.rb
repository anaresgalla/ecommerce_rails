class ApplicationController < ActionController::Base
  protected

  def check_admin_privileges
    if !current_admin
      redirect_to root_path
    end
  end
end
