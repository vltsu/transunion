class ApplicationController < ActionController::Base

  before_filter :authenticate_member!

  layout :layout_by_resource

  protect_from_forgery

  def current_ability
    @current_ability ||= Ability.new(current_member)
  end

  protected

  def layout_by_resource
    if devise_controller?
      'login'
    else
      'application'
    end
  end

  private
  def after_sign_out_path_for(resource_of_scope)
    '/'
  end
end
