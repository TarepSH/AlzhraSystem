class CreateAttendingsAndStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :attendings_students, id: false do |t|
      t.belongs_to :student, index: true
      t.belongs_to :attending, index: true
    end
  end
end
