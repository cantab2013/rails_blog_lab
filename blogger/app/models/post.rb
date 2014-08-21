class Post < ActiveRecord::Base

	has_many :pins
	has_many :tags, :through => :pins

end
