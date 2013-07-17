json.array!(@attacks) do |attack|
  json.extract! attack, :user_id, :started_at, :duration, :pain_level, :comment
  json.url attack_url(attack, format: :json)
end
