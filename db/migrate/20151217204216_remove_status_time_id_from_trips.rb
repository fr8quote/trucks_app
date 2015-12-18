class RemoveStatusTimeIdFromTrips < ActiveRecord::Migration
  def change
    remove_column :trips, :status_time_id
  end
end
