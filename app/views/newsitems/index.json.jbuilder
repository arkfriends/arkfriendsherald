json.array!(@newsitems) do |newsitem|
  json.extract! newsitem, :id, :title, :filename, :filetype_id, :priority, :zone_id, :duration, :starting, :ending, :staff_id
  json.url newsitem_url(newsitem, format: :json)
end
