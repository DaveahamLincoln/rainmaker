json.array!(@winners) do |winner|
  json.extract! winner, :id, :username
  json.url winner_url(winner, format: :json)
end
