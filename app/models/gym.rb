class Gym < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_rich_text :content
  has_many_attached :images

  def liked_by?(user)
    likes.exists?(user_id: user.id)
  end
end
