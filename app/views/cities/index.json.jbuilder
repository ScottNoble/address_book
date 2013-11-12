json.array!(@cities) do |city|
  json.extract! city, :name, :population, :state, :elevation
  json.url city_url(city, format: :json)
end
