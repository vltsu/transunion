# encoding: UTF-8
class Finance < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20

  belongs_to :request
  belongs_to :user, :class_name => "User", :foreign_key => "salary_person_id"
end
