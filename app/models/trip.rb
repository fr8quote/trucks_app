class Trip < ActiveRecord::Base
  has_many :status_times
  belongs_to :user
   accepts_nested_attributes_for :status_times
end
