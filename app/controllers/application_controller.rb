class ApplicationController < ActionController::Base
  before_filter :check_authentication, :except => [:signin_form, :signin]

  def check_authentication
    unless session[:user]
      session[:intended_action] = action_name
      raise 'Access denyed'
    end
  end

  protect_from_forgery
end
