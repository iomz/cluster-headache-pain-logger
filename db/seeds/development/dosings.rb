# Insert sample dosings for attack ID 0:19


0.upto(59) do |n|
    user_id = n/20 + 1
    drug_id = Random.rand(7) + 1
    attack_id = n + 1
    Dosing.create(:user_id => user_id, :attack_id => attack_id, :drug_id => drug_id, :dosed_at => Random.rand(20))
end
