json.array!(@fighters) do |fighter|
  json.extract! fighter, :id, :first_name, :last_name, :description
  json.url fighter_url(fighter, format: :json)
end
