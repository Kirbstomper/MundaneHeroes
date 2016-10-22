class User < ActiveRecord::Base
  attr_accessible :username,:password
  validates_uniqueness_of :username
  has_secure_password
  
end
