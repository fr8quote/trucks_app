class RemoveTripIdFromStatusTimes < ActiveRecord::Migration
  def change
    remove_column :status_times, :trip_id, :integer
    remove_column :status_times, :status_record_id, :integer
    remove_column :status_times, :time_group_id, :integer
  end
end
