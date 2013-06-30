json.array!(@attacks) do |attack|
  json.extract! attack, :user_id, :started_at, :ended_at, :pain_level, :comment
  json.url attack_url(attack, format: :json)
end
