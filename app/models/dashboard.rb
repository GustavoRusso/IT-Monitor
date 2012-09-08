class Dashboard < ActiveRecord::Base
  attr_accessible :active_incidents, :active_problems, :requested_changes
end
