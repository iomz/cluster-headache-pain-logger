class Dosing < ActiveRecord::Base
  # Setup accessible (or protected) attributes for your model
  attr_accessible :user_id, :attack_id, :drug_id, :dosed_at  
end
