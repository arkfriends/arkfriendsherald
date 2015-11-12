json.array!(@viewings) do |viewing|
  json.extract! viewing, :id, :newsitem_id, :time
  json.url viewing_url(viewing, format: :json)
end
