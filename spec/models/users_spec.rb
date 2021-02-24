require 'rails_helper'

RSpec.describe User do
  describe 'User has the same user id as FE User' do
    it 'can be created through FE User and have the same User ID' do
      # FE Has sent a POST request to the BE side to create a User
      # The ID should be created BASED ON the FE User
    end
  end
end