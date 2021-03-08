module UserHelper
  # def friend
  #   current_user.confirmed_friendships
  # end

  def confirmed_friend(user)
    friendship = friend(user)
    friendship.confirmed.count.positive? ? friendship.first : nil
  end

  def invite_friendship(user)
    link = link_to('Invite to friendship', friendships_path(friend_id: user),
                   method: :post, class: 'btn btn-info w-25')
    link if !current_user.pending_friends.include?(user) && !current_user.friends.include?(user) && !current_user.unconfirmed_friends
  end
end

# link should show if user is not friend with user on the list or if he has a pending request from  user in  the list