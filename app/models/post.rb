class Post < ActiveRecord::Base
  attr_accessible :content, :title, :user_id
  belongs_to :user
  
  def self.search(page)
    paginate :per_page => 10, :order => 'created_at', :page => page
  end
end
