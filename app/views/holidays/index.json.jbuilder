json.array!(@holidays) do |holiday|
  json.extract! holiday, :id, :holidayname, :date
  json.url holiday_url(holiday, format: :json)
end
