json.array!(@drugs) do |drug|
  json.extract! drug, :name, :price, :general_name
  json.url drug_url(drug, format: :json)
end
