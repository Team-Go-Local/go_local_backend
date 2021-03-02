# frozen_string_literal: true

require 'rails_helper'

describe 'Excursions Show Endpoint' do
  describe 'GET /excursions/:id' do
    it 'can fetch one excursion' do
      user = User.create(id: 1).id
      excursion1 = create(:excursion, user_id: user)

      get "/api/v1/excursions/#{excursion1.id}"
      expect(response).to be_successful
      excursion = JSON.parse(response.body, symbolize_names: true)[:data]

      check_hash_structure(excursion, :type, String)

      excursion_details = excursion[:attributes]

      check_hash_structure(excursion_details, :title, String)
      check_hash_structure(excursion_details, :description, String)
      check_hash_structure(excursion_details, :location, String)
      check_hash_structure(excursion_details, :user_id, Integer)
    end
  end
  describe 'sad path' do
    it 'rendes error message if microservice is down' do
      place_id = 1

      stub_request(:get, "https://go-local-maps-api.herokuapp.com/api/v1/place_details?#{place_id}").to_return(status: 404)

      expect(response).to eq(nil)
    end
  end
end
