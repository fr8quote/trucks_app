class RemoveUserFromTrips < ActiveRecord::Migration
  def change
    remove_column :trips, :User_id, :integer
  end
end
