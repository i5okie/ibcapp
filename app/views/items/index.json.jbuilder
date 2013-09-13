json.array!(@items) do |item|
  json.extract! item, :name, :description, :specs, :vendor_id, :vpn
  json.url item_url(item, format: :json)
end
