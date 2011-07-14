# coding: utf-8

class IndexController < ApplicationController
  layout nil
  layout 'application', :except => :signin_form

  def index
  end

  def signin_form
  end

  def signin
    if user = User.authenticate(params[:username], params[:password])
      session[:user] = user.id
      redirect_to :action => session[:intended_action]
    else
      redirect_to({:action => 'signin_form'}, {:notice => "Неверный логин или пароль"})
    end
  end

  def signout
    session[:user] = nil
    redirect_to :action => 'signin_form'
  end

end
