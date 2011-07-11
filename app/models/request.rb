# encoding: UTF-8
class Request < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20
  has_many :loading_points
  has_many :unloading_points
end
