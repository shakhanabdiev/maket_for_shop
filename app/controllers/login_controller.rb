class LoginController < ApplicationController
  def index
  	redirect_to admin_login_path
  end
end
