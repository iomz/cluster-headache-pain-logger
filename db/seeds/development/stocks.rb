# Insert initial stock values
1.upto(3) do |user_id|
  Stock.create(:user_id => user_id, :drug_id => 1, :quantity_available => 10)
end

sleep(1)
for i in 1..9
  1.upto(3) do |user_id|
    Stock.create(:user_id => user_id, :drug_id => 1, :quantity_available => 10-i)
  end
end

sleep(1)
1.upto(3) do |user_id|
  Stock.create(:user_id => user_id, :drug_id => 1, :quantity_available => 11)
end
1.upto(3) do |user_id|
  Stock.create(:user_id => user_id, :drug_id => 4, :quantity_available => 8)
end

sleep(1)
for i in 1..9
  1.upto(3) do |user_id|
    Stock.create(:user_id => user_id, :drug_id => 1, :quantity_available => 11-i)
  end
end

sleep(1)
1.upto(3) do |user_id|
  Stock.create(:user_id => user_id, :drug_id => 1, :quantity_available => 12)
end
1.upto(3) do |user_id|
  Stock.create(:user_id => user_id, :drug_id => 4, :quantity_available => 16)
end
