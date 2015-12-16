class StatusRecord < ActiveRecord::Base
  belongs_to :user
  has_many :status_times
  accepts_nested_attributes_for :status_times
end
