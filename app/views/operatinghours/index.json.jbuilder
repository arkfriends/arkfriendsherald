json.array!(@operatinghours) do |operatinghour|
  json.extract! operatinghour, :id, :dow, :starting, :ending
  json.url operatinghour_url(operatinghour, format: :json)
end
