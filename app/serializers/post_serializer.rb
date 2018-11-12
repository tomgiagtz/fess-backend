class PostSerializer < ActiveModel::Serializer
  attributes :content, :location, :created_at
  has_many :likes
end
