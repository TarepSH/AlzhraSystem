class AddAttendingToStudents < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :attedning, foreign_key: true
  end
end
