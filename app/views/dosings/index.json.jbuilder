json.array!(@dosings) do |dosing|
  json.extract! dosing, :attack_id, :drug_id, :dosed_at
  json.url dosing_url(dosing, format: :json)
end
