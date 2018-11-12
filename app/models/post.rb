class Post < ApplicationRecord
	has_many :likes
	
	def calculate_distance_from(current_position)
		x1 = current_position[0]
		y1 = current_position[1]
		x2 = self[:location][:x]
		y2 = self[:location][:y]
		Math.sqrt((x2 - x1)**2 + (y2 - y1)**2)
	end

	def self.get_posts_by_location(location)
		Post.all.select do |post|
			post.calculate_distance_from(location) < 0.5
		end
	end

end
