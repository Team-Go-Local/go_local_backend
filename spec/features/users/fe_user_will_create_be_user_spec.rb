require 'rails_helper'

RSpec.describe User do
  describe 'User has the same user id as FE User' do
    xit 'can be created through FE User and have the same User ID' do
      # FE Has sent a POST request to the BE side to create a User
      # The ID should be created BASED ON the FE User
      
      #FE User = create(id: 1, email: 'test@test.com', password: 'asdklfhj')
      # 
      id_to_test = 100
      post "backend_heroku.com/users/id=#{id_to_test}"

      # Stub this post action to force us to go to User controller
        #THIS WILL HAPPEN User.create(id: params[:id])

      expect(User.find(id_to_test).id).to eq(100)

    end
  end
end