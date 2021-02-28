require 'rails_helper'

describe 'PlaceSearchService' do
  it '.get_location_details' do
    fixture_json = File.read('spec/fixtures/place_search_result.json')
    place_details = "casa-bonita-Denver-CO"
    stub_request(:get, "https://go-local-maps-api.herokuapp.com/api/v1/place_search?location=#{place_details}").to_return(status: 200, body: fixture_json)
    

    expect(PlaceSearchService.get_location_details(place_details)).to eq(fixture_json)
  end
end