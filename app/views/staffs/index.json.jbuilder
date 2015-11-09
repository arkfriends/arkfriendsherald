json.array!(@staffs) do |staff|
  json.extract! staff, :id, :admin
  json.url staff_url(staff, format: :json)
end
