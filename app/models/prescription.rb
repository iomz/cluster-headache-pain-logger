class Prescription < ActiveRecord::Base
  # Setup accessible (or protected) attributes for your model
  attr_accessible :user_id, :prescribed_at, :drug_id, :quantity
end
