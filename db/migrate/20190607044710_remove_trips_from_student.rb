class RemoveTripsFromStudent < ActiveRecord::Migration[5.2]
  def change
    remove_reference :students, :trips, foreign_key: true
  end
end
