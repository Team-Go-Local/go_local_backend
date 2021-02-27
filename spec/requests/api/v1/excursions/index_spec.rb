require 'rails_helper'

describe "Excursions Index Endpoint" do
  describe 'GET /excursions' do
    it "can fetch all excursion" do
      user = User.create(id: 1).id
      excursion1 = create(:excursion, user_id: user)
      excursion2 = create(:excursion, user_id: user)
      excursion3 = create(:excursion, user_id: user)
      excursion4 = create(:excursion, user_id: user)
      excursion5 = create(:excursion, user_id: user)
      excursion6 = create(:excursion, user_id: user)

      get '/api/v1/excursions'

      expect(response).to be_successful
    
      excursions = JSON.parse(response.body, symbolize_names: true)[:data]

      expect(excursions.count).to eq(6)

      excursions.each do |excursion|
        check_hash_structure(excursion, :type, String)

        excursion_details = excursion[:attributes]

        check_hash_structure(excursion_details, :title, String)
        check_hash_structure(excursion_details, :description, String)
        check_hash_structure(excursion_details, :location, String)
        check_hash_structure(excursion_details, :user_id, Integer)
      end
    end
  end
end