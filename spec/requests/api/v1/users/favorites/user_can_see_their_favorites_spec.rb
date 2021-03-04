# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Favorite do
  describe 'User favorite excursions' do
    it 'can see all their favorites' do
      local_id   = User.create(id: 1).id
      excursion1 = Excursion.create({
                    title: 'Beach Party',
                    description: 'Local Beach Party with Friends',
                    location: 'Santa Cruz, CA',
                    user_id: local_id,
                    place_id: '389aqdjlojfaonfhkljhf'
                })
      excursion2 = Excursion.create({
                    title: 'Yummy Belly Tea',
                    description: 'Tea Shop',
                    location: 'Santa Cruz, CA',
                    user_id: local_id,
                    place_id: '385464jlojfaonfljhf'
                })
      traveler   = User.create(id: 2)
      favorite   = Favorite.create(user_id: traveler.id, excursion_id: excursion2.id)

      get "/api/v1/users/#{traveler.id}/favorites"

      expect(response).to be_successful
      expect(traveler.favorites.count).to eq(1)

      traveler_favorites = Favorite.where(user_id: traveler.id)
    
      traveler_favorites.each do |favorite|
        
        favorite_excursion = favorite.excursion

        expect(favorite_excursion.title).to eq(excursion2[:title])
        expect(favorite_excursion.description).to eq(excursion2[:description])
      end
    end
  end
end
