require 'rails_helper'

RSpec.describe Excursion do
  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
    it { should validate_presence_of :location }
  end
  describe 'relationships' do
    it { should have_many :taggings }
    it { should have_many(:tags).through(:taggings) }
    it { should have_many :favorites }
    it { should belong_to :user }
  end
end