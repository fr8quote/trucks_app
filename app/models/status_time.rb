class StatusTime < ActiveRecord::Base
  belongs_to :user
  belongs_to :trips, class_name: "Trip",
                        foreign_key: "trip_id"
  
  accepts_nested_attributes_for :trips

 
                        
  
  validates_presence_of :status 
  validates_presence_of :trip_id 
  
end
