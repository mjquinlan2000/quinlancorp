class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :username, :role_id, :password_confirmation
  acts_as_authentic
  
  belongs_to :role
  has_many :posts
  
  def role_symbols
    symbol = role.name.underscore.to_sym
    symbols = []
    symbols.push symbol
  end
end
