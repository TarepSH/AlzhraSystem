class AddStudnetToTrip < ActiveRecord::Migration[5.2]
  def change
    add_reference :trips, :student, foreign_key: true
  end
end
