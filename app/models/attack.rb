class Attack < ActiveRecord::Base
  # Setup accessible (or protected) attributes for your model
  attr_accessible :user_id, :started_at, :ended_at, :pain_level, :comment
end
