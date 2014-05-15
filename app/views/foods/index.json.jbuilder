json.array!(@foods) do |food|
  json.extract! food, :id, :name, :place
  json.url food_url(food, format: :json)
end
