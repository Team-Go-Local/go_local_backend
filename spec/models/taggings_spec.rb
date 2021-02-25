require 'rails_helper'

RSpec.describe Tagging do
  describe 'relationships' do
    it { should belong_to :tag }
    it { should belong_to :excursion }
  end

  describe 'instantiation' do
    it 'exists with attributes' do
      user1 = create(:user, id: 1)
      ex1 = create(:excursion, author_id: user1.id)
      tagging = create(:tagging, excursion_id: ex1.id)

      expect(tagging).to be_instance_of Tagging
    end
  end
end