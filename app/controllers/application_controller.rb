class ApplicationController < ActionController::Base
  before_filter :check_authentication, 
                :check_authorization, 
                :except => [:signin_form, :signin]
  before_filter :hide_sign_in_form, :only => [:signin_form]

  #Hide sign-in form for logined user
  def hide_sign_in_form
    if session[:user]
      redirect_to home_url
    end
  end

  #Check if user logined
  def check_authentication
    unless session[:user]
      session[:intended_action] = action_name
      redirect_to signin_form_url
    end
  end

  #Check if logined user has access to requested
  #controller and action
  def check_authorization
    acl = Acl.new()

    acl.add_role('administrator')
    acl.add_role('manager')

    acl.add_resource('users')
    acl.add_resource('index')
    acl.add_resource('drivers')
    acl.add_resource('carrier_companies')
    acl.add_resource('customer_companies')
    acl.add_resource('opfs')
    acl.add_resource('company_faces')

    acl.allow('manager','index')
    acl.allow('manager','users')
    acl.allow('manager','drivers')
    acl.allow('manager','carrier_companies')
    acl.allow('manager','customer_companies')

    acl.allow('administrator','index')
    acl.allow('administrator','drivers')
    acl.allow('administrator','users')
    acl.allow('administrator','carrier_companies')
    acl.allow('administrator','customer_companies')
    acl.allow('administrator','opfs')
    acl.allow('administrator','company_faces')

    user_role = User.find(session[:user]).role
    
    request_controller = params[:controller]
    request_action     = params[:action]

    if !(acl.check_access(user_role, request_controller, request_action))
      raise 'Access error'
    end

  end

  protect_from_forgery
end
