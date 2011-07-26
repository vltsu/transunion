# encoding: UTF-8
class User < ActiveRecord::Base

  cattr_reader :full_name

  validates_uniqueness_of :login

  validates :lastname,                   :presence => { :message => 'Введите фамилию' }
  validates :firstname,                  :presence => { :message => 'Введите имя' }
  validates :middlename,                 :presence => { :message => 'Введите отчество' }

  def password=(pass)
    salt = [Array.new(6){rand(256).chr}.join].pack('m').chomp
    self.password_salt, self.password_hash =
      salt, Digest::SHA256.hexdigest(pass + salt)
  end

  def self.authenticate(username, password)
    user = User.find(:first, :conditions => ['login = ?', username])
    if user.blank? ||
      Digest::SHA256.hexdigest(password + user.password_salt) !=
        user.password_hash
    else
      user
    end
  end

  def full_name
    "#{self.lastname} #{self.firstname} #{self.middlename}"
  end
end
