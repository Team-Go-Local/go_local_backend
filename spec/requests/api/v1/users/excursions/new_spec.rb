# frozen_string_literal: true

require 'rails_helper'

describe 'excursions' do
  it 'can create an excursions ' do
    user = User.create(id: 1)
    excursion_params = {
                          title: Faker::Coffee.blend_name,
                          description: Faker::Coffee.notes,
                          location: Faker::Address.city,
                          user_id: user.id
                        }

    headers = { 'CONTENT_TYPE' => 'application/json' }

    post "/api/v1/users/#{user.id}/excursions", headers: headers, params: JSON.generate(excursion_params)

    created_excursion = Excursion.last

    expect(response).to be_successful
    expect(response).to have_http_status(:created)
    expect(created_excursion.title).to eq(excursion_params[:title])
    expect(created_excursion.description).to eq(excursion_params[:description])
    expect(created_excursion.location).to eq(excursion_params[:location])
    expect(created_excursion.user_id).to eq(excursion_params[:user_id])
  end
end
