json.array!(@people) do |person|
  json.extract! person, :first_name, :last_name, :email, :address_line_one, :city, :state, :zip
  json.url person_url(person, format: :json)
end
