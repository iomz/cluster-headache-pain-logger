class Attack < ActiveRecord::Base
  # Setup accessible (or protected) attributes for your model
  attr_accessible :user_id, :started_at, :duration, :pain_level, :comment
end
