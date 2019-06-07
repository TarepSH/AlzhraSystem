class RemoveStudnetFromTrips < ActiveRecord::Migration[5.2]
  def change
    remove_reference :trips, :student, foreign_key: true
  end
end
