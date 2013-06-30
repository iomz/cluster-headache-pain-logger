# Insert sample dosings for attack ID 0:9

drug_id = 0

0.upto(29) do |n|
    dosed_t = DateTime.parse(n.days.from_now.to_time.to_s)
    user_id = n/10 + 1
    Dosing.create(:user_id => user_id, :attack_id => n, :drug_id => drug_id, :dosed_at => dosed_t)
end
