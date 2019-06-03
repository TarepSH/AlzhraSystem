class RemoveAttendingsFromStudent < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :students, :attendingss
 
    remove_reference :students, :attendings, foreign_key: true
  end
end
