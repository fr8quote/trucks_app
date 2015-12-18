class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :StatusTimes, :Trips do |t|
      # t.index [:status_time_id, :trip_id]
      # t.index [:trip_id, :status_time_id]
    end
  end
end
