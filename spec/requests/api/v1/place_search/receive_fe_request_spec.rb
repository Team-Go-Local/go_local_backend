require 'rails_helper'

describe 'receive_fe_request' do
  it 'receive request from FE & return response from microservice as is' do
    fixture_json = File.read('spec/fixtures/place_search_result.json')
    be_search_details = "casa-bonita-Denver-CO"
    stub_request(:get, "https://go-local-maps-api.herokuapp.com/api/v1/place_search?location=#{be_search_details}").to_return(status: 200, body: fixture_json)
    get "/api/v1/place_search?title=casa%20bonita&location=Denver,%20CO"
    json_response = JSON.parse(response.body, symbolize_names: true)[:data]

    expect(response.status).to eq(200)
    expect(json_response).to have_key(:attributes)
    expect(json_response[:attributes]).to have_key(:place_id)
    expect(json_response[:attributes][:place_id]).to be_a(String)
    expect(json_response[:attributes]).to have_key(:formatted_address)
    expect(json_response[:attributes][:formatted_address]).to be_a(String)
    expect(json_response[:attributes]).to have_key(:name)
    expect(json_response[:attributes][:name]).to be_a(String)
  end
end
