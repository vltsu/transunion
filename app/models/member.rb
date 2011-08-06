# encoding: UTF-8
class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation
  cattr_reader :per_page
  @@per_page = 20

  #Возвращает true если пользователь администратор
  def admin?
    self.admin == true
  end
end
