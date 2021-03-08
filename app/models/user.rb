class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 20 }

  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy


  has_many :friendships, foreign_key: 'user_id'

  has_many :confirmed_friendships, -> { where status: true }, class_name: "Friendship"
  has_many :friends, through: 'confirmed_friendships', class_name: 'User'

  has_many :unconfirmed_friendships, -> { where status: false }, class_name: "Friendship", foreign_key: 'user_id'
  has_many :unconfirmed_friends, through: 'unconfirmed_friendships', source: 'user'

  has_many :pending_friendships, -> { where status: false }, class_name: "Friendship", foreign_key: 'friend_id'
  has_many :pending_friends, through: 'pending_friendships', source: 'user'
end

