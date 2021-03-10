require 'rails_helper'

feature 'Friendships', type: :feature do
  fixtures :friendships, :users

  context 'Incoming Friend Request' do
    scenario 'should be accepeted' do
      login_as(users(:user1))
      visit 'users/1'
      click_on 'Accept'
      expect(page).to have_content('You added helcio as your friend')
    end

    scenario 'should be rejected' do
      login_as(users(:user1))
      visit 'users/1'
      click_on 'Reject'
      expect(page).to have_content('Friend rejected!')
    end
  end
  context 'Send a friend request' do
    scenario 'sent succesfully' do
      login_as(users(:user1))
      visit 'users'
      click_on 'Invite to friendship'
      expect(page).to have_content('Sent Friend Request')
    end
  end
end
