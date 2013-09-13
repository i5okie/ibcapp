json.array!(@suppliers) do |supplier|
  json.extract! supplier, :name, :description, :website, :account_number, :sales_contact
  json.url supplier_url(supplier, format: :json)
end
