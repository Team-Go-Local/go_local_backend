require 'rails_helper'

describe 'PlaceSearchFacade' do
  it '.format_details' do
    title = "Rangoon Ruby"
    location = "San Francisco, CA"

    result = "Rangoon-Ruby-San-Francisco-CA"

    expect(PlaceSearchFacade.format_details(title, location)).to eq(result)
  end
end