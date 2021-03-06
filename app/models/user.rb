class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.guest
    find_or_create_by!(email: "guest@example.com") do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "ゲスト"
    end
  end
  
  has_many :gyms, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_gyms, through: :likes, source: :gym

  validates :name, uniqueness: true, presence: true
  validates :profile, length: { maximum: 200 }
  validates :email, { uniqueness: { case_sensitive: false } }
end
