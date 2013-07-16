# Insert sample dosings for attack ID 0:19

drug_id = 1

0.upto(59) do |n|
    dosed_t = DateTime.parse(n.days.from_now.to_time.to_s)
    user_id = n/20 + 1
    attack_id = n + 1
    Dosing.create(:user_id => user_id, :attack_id => attack_id, :drug_id => drug_id, :dosed_at => dosed_t)
end
