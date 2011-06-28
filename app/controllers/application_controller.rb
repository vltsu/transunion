class ApplicationController < ActionController::Base
 before_filter :check_authentication, 
                :check_authorization, 
                :except => [:signin_form, :signin]

  def check_authentication
    unless session[:user]
      session[:intended_action] = action_name
      raise 'Access denyed'
    end
  end

  def check_authorization

    acl = Acl.new()

    acl.add_role('administrator')
    acl.add_role('manager')

    acl.add_resource('users')
    acl.add_resource('index')
    acl.add_resource('drivers')
    acl.add_resource('cartypes')

    acl.allow('manager','index')
    acl.allow('manager','users')
    acl.allow('manager','drivers')

    acl.allow('administrator','index')
    acl.allow('administrator','drivers')
    acl.allow('administrator','users')
    acl.allow('administrator','cartypes')

    user_role = User.find(session[:user]).role
    
    request_controller = params[:controller]
    request_action     = params[:action]

    if !(acl.check_access(user_role, request_controller, request_action))
      raise 'Access error'
    end

  end

  protect_from_forgery
end
