# Insert initial stock values
1.upto(3) do |user_id|
  Stock.create(:user_id => user_id, :drug_id => 0, :quantity_available => 10)
end
