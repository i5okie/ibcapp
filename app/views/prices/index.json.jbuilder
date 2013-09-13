json.array!(@prices) do |price|
  json.extract! price, :item_id, :supplier_id, :cost
  json.url price_url(price, format: :json)
end
