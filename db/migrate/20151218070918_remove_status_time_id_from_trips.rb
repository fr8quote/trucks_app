class RemoveStatusTimeIdFromTrips < ActiveRecord::Migration
  def change
    remove_column :trips, :StatusTime_id, :integer
  end
end
