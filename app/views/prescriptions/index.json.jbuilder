json.array!(@prescriptions) do |prescription|
  json.extract! prescription, :user_id, :prescribed_at, :drug_id, :quantity, :quantity
  json.url prescription_url(prescription, format: :json)
end
