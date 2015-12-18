class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.references :status_time, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.decimal :total_hours

      t.timestamps null: false
    end
  end
end
