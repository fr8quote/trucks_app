class StatusTime < ActiveRecord::Base
  belongs_to :user
  belongs_to :status_record, primary_key: "name", foreign_key: "record_times"
  validates_presence_of :status 
  
end
