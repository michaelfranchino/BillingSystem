class ApplicationController < ActionController::Base
  include ControllerAuthentication
  protect_from_forgery
  
  helper_method :admin?  

  def admin?
    true
  end
  
end
