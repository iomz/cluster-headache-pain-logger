# Add 1 prescribed_t => yesterday

1.upto(3) do |user_id|
  yesterday = DateTime.parse(Time.at(Time.new.to_i - 60*60*24).to_s)
  Prescription.create(:user_id => user_id, :prescribed_at => yesterday, :drug_id => 0, :quantity => 20)
end
