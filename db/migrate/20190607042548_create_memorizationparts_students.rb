class CreateMemorizationpartsStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :memorizationparts_students, id: false do |t|
      t.belongs_to :student, index: true
      t.belongs_to :memorizationpart, index: true
    end
  end
end
