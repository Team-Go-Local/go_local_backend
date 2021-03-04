require 'rails_helper'

RSpec.describe ExcursionsFacade do
  it 'adds the nearest city upon creation' do
    city = ExcursionsFacade.nearest_city('(43.606577, -72.97946999999999)')
    expect(city).to eq('New Orleans, LA')
  end
end
