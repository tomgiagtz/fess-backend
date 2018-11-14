class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :user_id, presence: true
  validates :post_id, presence: true
  validates :content, presence: true
  validates :user_id, numericality: { only_integer: true}
  validates :post_id, numericality: { only_integer: true}
end
