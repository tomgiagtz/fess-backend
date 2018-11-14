class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :like_count, :created_at
  has_many :likes
  has_many :comments
end
