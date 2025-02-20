require 'rails_helper'

RSpec.describe StationService do
  it 'returns the data from the nearest station to turing' do
    location = '1331 17th St LL100, Denver, CO 80202'
    station_data = StationService.get_station_data(location)
    # binding.pry
    expect(station_data).to be_a(Hash)
    expect(station_data).to have_key(:fuel_stations)
    expect(station_data[:fuel_stations].first).to have_key(:station_name)
    expect(station_data[:fuel_stations].first).to have_key(:station_name)
    expect(station_data[:fuel_stations].first).to have_key(:street_address)
    expect(station_data[:fuel_stations].first).to have_key(:access_days_time)
    expect(station_data[:fuel_stations].first).to have_key(:fuel_type_code)
  end
end