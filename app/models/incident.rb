class Incident < ActiveRecord::Base
  attr_accessible :close_time, :description, :key, :open_time, :service, :severity, :status
end
