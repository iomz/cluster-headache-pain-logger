puts "db/seeds/development/attacks.rb"

0.upto(9) do |n|
  start_t = n.days.from_now.to_datetime
  end_t = DateTime.parse(Time.at(start_t.to_time.to_i + 60*15).to_s)
  pain =  1 + Random.rand(10)
  Attack.create(:id => n, :user_id => 1, :started_at => start_t, :ended_at => end_t, :pain_level => pain, :created_at => start_t, :updated_at => start_t)
end
