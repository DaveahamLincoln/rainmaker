json.array!(@shasums) do |shasum|
  json.extract! shasum, :id, :sum
  json.url shasum_url(shasum, format: :json)
end
