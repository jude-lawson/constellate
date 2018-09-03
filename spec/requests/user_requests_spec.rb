require 'rails_helper'

RSpec.describe 'User Requests' do
  before :each do
    @user1 = User.create!(first_name: 'User', last_name: 'One',
                          email: 'user1@na.moc', username: 'userone',
                          password: 'password1')
    @user2 = User.create!(first_name: 'User', last_name: 'Two',
                          email: 'user2@na.moc', username: 'usertwo',
                          password: 'password2')
  end
  
  describe 'GET /api/v1/users/:id' do
    it 'should return the specified user\'s information' do
      get "/api/v1/users/#{@user1.id}"

      expect(response.body).to eq(@user1.to_json)
    end
  end
end
