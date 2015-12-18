class DropStatusTimesTrips < ActiveRecord::Migration
  def change
    drop_table :StatusTimes_Trips
  end
end
