require 'rails_helper'

RSpec.describe User do
  describe 'validations' do
    it { should validate_presence_of :id }
  end

  describe 'relationships' do
    it { should have_many :favorites }
    it { should have_many :excursions }
  end

  describe 'instantiation' do
    it 'exists with attributes' do
      user1 = create(:user, id: 1)

      expect(user1).to be_instance_of User
    end
  end
end