class CreateMemorizationpagesAndStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :memorizationpages_students, id: false do |t|
      t.belongs_to :student,  index: true
      t.belongs_to :memorizationpage,  index: true
    end
  end
end
