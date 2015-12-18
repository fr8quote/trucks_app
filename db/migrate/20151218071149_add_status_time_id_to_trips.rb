class AddStatusTimeIdToTrips < ActiveRecord::Migration
  def change
    add_reference :trips, :status_time, index: true, foreign_key: true
  end
end
