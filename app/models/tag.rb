class Tag < ActiveRecord::Base
  has_many :posts_tags
  has_many :posts, :through => :posts_tags
end
