class AddUserIdToStatusTimes < ActiveRecord::Migration
  def change
    add_reference :status_times, :user, index: true, foreign_key: true
  end
end
