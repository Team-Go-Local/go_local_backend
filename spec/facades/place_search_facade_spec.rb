require 'rails_helper'

describe 'PlaceSearchFacade' do
  it '.format_details' do
    title = "Rangoon Ruby"
    location = "San Francisco, CA"

    result = "Rangoon-Ruby-San-Francisco-CA"

    expect(PlaceSearchFacade.format_details(title, location)).to eq(result)
  end

  it '.place_details' do
    fixture_json = File.read('spec/fixtures/place_search_result.json')
    be_search_details = "casa-bonita-Denver-CO"
    stub_request(:get, "https://go-local-maps-api.herokuapp.com/api/v1/place_search?location=#{be_search_details}").to_return(status: 200, body: fixture_json)
    
    title = "casa bonita"
    location = "Denver, CO"

    expect(PlaceSearchFacade.place_details(title, location)).to eq(fixture_json)
  end
end