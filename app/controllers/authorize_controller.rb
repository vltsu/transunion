class AuthorizeController < ApplicationController
  check_authorization
  load_and_authorize_resource

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to home_path
  end

end
