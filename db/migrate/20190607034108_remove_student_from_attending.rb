class RemoveStudentFromAttending < ActiveRecord::Migration[5.2]
  def change
    remove_reference :attendings, :student, foreign_key: true
  end
end
