# Insert sample attacks for :user_id = (1..3)
1.upto(3) do |user_id|
  0.upto(19) do |n|
    start_t = DateTime.parse(Time.at(n.days.from_now.to_time.to_i + Random.rand(60*60)).to_s)
    dur = Random.rand(50)+10
    pain =  1 + Random.rand(10)
    Attack.create(:user_id => user_id, :started_at => start_t, :duration => dur, :pain_level => pain)
  end
end
