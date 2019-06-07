class RemoveStudnetsFromTrips < ActiveRecord::Migration[5.2]
  def change
    remove_reference :trips, :students, foreign_key: true
  end
end
