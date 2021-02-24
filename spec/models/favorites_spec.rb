require 'rails_helper'

RSpec.describe Favorite do
  describe 'relationships' do
    it { should belong_to :user }
    it { should belong_to :excursion }
  end
end