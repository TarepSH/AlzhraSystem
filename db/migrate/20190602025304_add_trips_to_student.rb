class AddTripsToStudent < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :trips, foreign_key: true
  end
end
