class AdminController < ApplicationController
  before_action :check_admin_privileges

  def show
  end
end
