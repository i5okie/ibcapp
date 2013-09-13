json.array!(@vendor_items) do |vendor_item|
  json.extract! vendor_item, :item_id, :vendor_id, :spn
  json.url vendor_item_url(vendor_item, format: :json)
end
