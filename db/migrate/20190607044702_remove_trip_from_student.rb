class RemoveTripFromStudent < ActiveRecord::Migration[5.2]
  def change
    remove_reference :students, :trip, foreign_key: true
  end
end
