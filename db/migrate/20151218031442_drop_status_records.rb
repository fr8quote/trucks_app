class DropStatusRecords < ActiveRecord::Migration
  def change
    drop_table :status_records
  end
end
