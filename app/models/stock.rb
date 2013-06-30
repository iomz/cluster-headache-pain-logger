class Stock < ActiveRecord::Base
  # Setup accessible (or protected) attributes for your model
  attr_accessible :user_id, :drug_id, :quantity_available
end
