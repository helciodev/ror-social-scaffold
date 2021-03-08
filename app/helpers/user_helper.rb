module UserHelper
  def sent_request_to(user)
    current_user.friendships.find_by(user_id: current_user.id, friend_id: user.id )
  end

  def confirmed_friend(user)
    friendship = friend(user)
    friendship.confirmed.count.positive? ? friendship.first : nil
  end

  def invite_friendship(user)
    link = link_to('Invite to friendship', friendships_path(friend_id: user),
                   method: :post, class: 'btn btn-info w-25')
    link if !current_user.pending_friends.include?(user) && !current_user.friends.include?(user) && !sent_request_to(user)
  end
end
