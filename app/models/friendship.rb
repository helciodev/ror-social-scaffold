class Friendship < ApplicationRecord
  after_update :reverse_friendship

  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :friend, class_name: 'User', foreign_key: 'friend_id'

  scope :confirmed, -> { where('status = ? ', true) }
  scope :unconfirmed, -> { where('status = ? ', false) }

  def reverse_friendship
    Friendship.create(status: true, friend_id: self.user_id, user_id: self.friend_id)
  end
end
