module ApplicationHelper
  def menu_link_to(link_text, link_path)
    class_name = current_page?(link_path) ? 'menu-item active' : 'menu-item'

    content_tag(:div, class: class_name) do
      link_to link_text, link_path
    end
  end

  def like_or_dislike_btn(post)
    like = Like.find_by(post: post, user: current_user)
    if like
      link_to('Dislike!', post_like_path(id: like.id, post_id: post.id), method: :delete)
    else
      link_to('Like!', post_likes_path(post_id: post.id), method: :post)
    end
  end

  def friend_request
    # we want to be able to return number of friend requests for the current user
    # we need to count the inverse friendships
    # we will return pluralize if bigger than one or singular if not

    @user_friend_request = current_user.inverse_friendships.unconfirmed.count

    if @user_friend_request > 1
      "friend requests #{@user_friend_request}"
    elsif  @user_friend_request == 1
      "friend request #{@user_friend_request}"
    else
      "friend request"
    end
  end
end
