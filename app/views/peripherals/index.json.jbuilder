json.array!(@peripherals) do |peripheral|
  json.extract! peripheral, :id, :name
  json.url peripheral_url(peripheral, format: :json)
end
