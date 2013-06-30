# Add 1 prescribed_t => yesterday

yesterday = DateTime.parse(Time.at(Time.new.to_i - 60*60*24).to_s)
Prescription.create(:user_id => 1, :prescribed_at => yesterday, :drug_id => 0, :quantity => 10)
