module FriendshipsHelper
  def all_friendship_details(user)
    if current_user.id == user.id
      'friendships/friendships_details'
    else
      'layouts/empty'
    end
  end
end
