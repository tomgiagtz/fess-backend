class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :user_id, numericality: { only_integer: true}
  validates :post_id, numericality: { only_integer: true}
  validates :user_id, presence: true
  validates :post_id, presence: true
  validates :upvote, presence: true
  validates :upvote, inclusion: {in: [true, false]}
end
