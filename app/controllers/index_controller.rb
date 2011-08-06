#encoding: utf-8
class IndexController < ApplicationController
  before_filter :authenticate_member!

  def index
  end

end
