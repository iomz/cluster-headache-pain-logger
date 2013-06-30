json.array!(@stocks) do |stock|
  json.extract! stock, :user_id, :drug_id, :quantity_available
  json.url stock_url(stock, format: :json)
end
