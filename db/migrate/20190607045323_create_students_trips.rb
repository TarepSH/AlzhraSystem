class CreateStudentsTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :students_trips, id: false do |t|
      t.belongs_to :student, index: true
      t.belongs_to :trip, index: true
    end
  end
end
