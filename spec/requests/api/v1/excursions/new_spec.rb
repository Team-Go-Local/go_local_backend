require 'rails_helper'

describe "excursions" do
  it "can create an excursions " do
    user = User.create(:user)

    excursion_params = {
                      title: Faker::Coffee.blend_name, 
                      description: Faker::Coffee.notes,
                      location: Faker::Address.city
                      user_id: Faker::Number.number(digits: 2) 
                       }

    headers = {"CONTENT_TYPE" => "application/json"}

    post '/api/v1/excursions', headers: headers, params: JSON.generate(excursion_params)

    created_excursions = Excursion.last

    expect(response).to be_successful
    expect(response).to have_http_status(:created)
    expect(created_excursion.title).to eq(excursion_params.title)
    expect(created_excursion.description).to eq(excursion_params.description)
    expect(created_excursion.location).to eq(excursion_params.location)
    expect(created_excursion.user_id).to eq(excursion_params.uder_id)
    end 
  end