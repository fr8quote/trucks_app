class CreateStatusRecords < ActiveRecord::Migration
  def change
    create_table :status_records do |t|
      t.integer :group_id
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
