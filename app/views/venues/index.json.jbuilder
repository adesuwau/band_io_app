json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :city, :state, :family_friendly
  json.url venue_url(venue, format: :json)
end
