module UserHelper
  def sent_request_to(user)
    current_user.friendships.find_by(user_id: current_user.id, friend_id: user.id)
  end

  def confirmed_friend(user)
    friendship = friend(user)
    friendship.confirmed.count.positive? ? friendship.first : nil
  end

  def invite_friendship(user)

    if !current_user.pending_friends.include?(user) &&
            !current_user.friends.include?(user) &&
            !sent_request_to(user)
      'friendships/friendship_link'
    else
      'layouts/empty'
    end
  end
end
