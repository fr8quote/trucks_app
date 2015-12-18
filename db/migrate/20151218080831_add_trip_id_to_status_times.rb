class AddTripIdToStatusTimes < ActiveRecord::Migration
  def change
    add_reference :status_times, :trip, index: true, foreign_key: true
  end
end
