class CreateStatusTimes < ActiveRecord::Migration
  def change
    create_table :status_times do |t|
      t.string :status
      t.string :notes
      t.integer :time_group_id
      t.references :status_record, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
