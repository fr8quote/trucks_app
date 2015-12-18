class StatusTime < ActiveRecord::Base
  belongs_to :user
  belongs_to :trip
  #belongs_to :trip, :class_name => "Trip", :foreign_key => "trip_id"
  validates_presence_of :status 
  
end
