class LikeSerializer < ActiveModel::Serializer
  	attributes :id, :user_id, :upvote
end
