class User < ApplicationRecord
  has_secure_password

  validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..30 }
  validates :email, :presence => true, :uniqueness => true
  validates :password_digest, :presence => true 
  validates_presence_of :password, :on => :create
end
