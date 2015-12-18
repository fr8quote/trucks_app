class AddDetailsToStatusTimes < ActiveRecord::Migration
  def change
    add_column :status_times, :location, :string
  end
end
