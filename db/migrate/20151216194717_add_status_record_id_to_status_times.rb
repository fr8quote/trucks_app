class AddStatusRecordIdToStatusTimes < ActiveRecord::Migration
  def change
    add_column :status_times, :record_id, :integer
  end
end
