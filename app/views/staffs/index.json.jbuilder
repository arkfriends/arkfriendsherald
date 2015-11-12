json.array!(@staffs) do |staff|
  json.extract! staff, :id, :name, :login, :password, :role_id
  json.url staff_url(staff, format: :json)
end
