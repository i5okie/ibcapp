json.array!(@vendors) do |vendor|
  json.extract! vendor, :name, :description, :website, :support_page, :partner, :partner_id
  json.url vendor_url(vendor, format: :json)
end
