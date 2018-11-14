class Post < ApplicationRecord
	has_many :likes
	has_many :comments
	validates :location, presence: true
	validates :content, presence: true

	def like_count
		likes = self.likes
		return likes.inject(0) do |count, like|
			like.upvote ? count+1 : count-1
		end
	end

	def calculate_distance_from(current_position)
		x1 = current_position[0]
		y1 = current_position[1]
		x2 = self[:location][:x]
		y2 = self[:location][:y]
		Math.sqrt((x2 - x1)**2 + (y2 - y1)**2)
	end

	def self.get_nearest_posts(location)
		posts = Post.get_posts_by_location(location)
		posts.sort do |post1, post2|
			post1.calculate_distance_from(location) - post2.calculate_distance_from(location)
		end

	end

	def self.get_posts_by_location(location)
		puts location
		Post.all.select do |post|
			post.calculate_distance_from(location) < 0.5
		end
	end

end
