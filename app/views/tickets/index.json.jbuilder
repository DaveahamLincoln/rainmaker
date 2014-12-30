json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :username, :valid_flag
  json.url ticket_url(ticket, format: :json)
end
