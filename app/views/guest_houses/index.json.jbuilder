json.array!(@guest_houses) do |guest_house|
  json.extract! guest_house, :id, :name, :city_id, :stars_count
  json.url guest_house_url(guest_house, format: :json)
end
