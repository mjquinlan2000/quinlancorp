class UserSession < ActiveRecord::Base
  attr_accessible :password, :username
end
