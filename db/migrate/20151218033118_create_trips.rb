class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.references :User, index: true, foreign_key: true
      t.references :StatusTime, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
