class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :username
  acts_as_authentic
  
  has_one :role
  
  def user_symbols
    role.name.underscore.to_sym
  end
end
