class User < ApplicationRecord
  validates_presence_of :first_name, :last_name, :email, :username
  has_secure_password
end
