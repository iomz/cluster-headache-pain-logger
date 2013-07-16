# Insert initial stock values
1.upto(3) do |user_id|
  Stock.create(:user_id => user_id, :drug_id => 1, :quantity_available => 10)
end

for i in 1..9
  1.upto(3) do |user_id|
    Stock.create(:user_id => user_id, :drug_id => 1, :quantity_available => 10-i)
  end
end

1.upto(3) do |user_id|
  Stock.create(:user_id => user_id, :drug_id => 1, :quantity_available => 11)
end

for i in 1..9
  1.upto(3) do |user_id|
    Stock.create(:user_id => user_id, :drug_id => 1, :quantity_available => 11-i)
  end
end

1.upto(3) do |user_id|
  Stock.create(:user_id => user_id, :drug_id => 1, :quantity_available => 12)
end

for i in 1..2
  1.upto(3) do |user_id|
    Stock.create(:user_id => user_id, :drug_id => 1, :quantity_available => 12-i)
  end
end
