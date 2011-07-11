# encoding: UTF-8
class UnloadingPoint < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20
  belongs_to :request
end
