class Tag < ActiveRecord::Base

	has_many :pins
	has_many :posts, :through => :pins

end
