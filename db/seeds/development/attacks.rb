# Insert sample attacks for :user_id => 0
0.upto(9) do |n|
  user_id = 1
  start_t = n.days.from_now.to_datetime
  end_t = DateTime.parse(Time.at(start_t.to_time.to_i + 60*15).to_s)
  pain =  1 + Random.rand(10)
  puts "id: #{n}, user_id: #{user_id}, started_at: #{start_t}, ended_at: #{end_t}, pain_level: #{pain}"
  Attack.create(:id => n, :user_id => user_id, :started_at => start_t, :ended_at => end_t, :pain_level => pain)
end
