class DropStatusTimes < ActiveRecord::Migration
  def change
    drop_table :status_times
  end
end
