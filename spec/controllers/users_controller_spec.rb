require 'rails_helper'

RSpec.describe UsersController do
  describe 'GET index' do
    fixtures :users

    it 'assigns @users' do
      login_as(users(:user1))
      expect(response).to have_http_status(:ok)
    end
  end
end
