class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.string :fathername
      t.string :schoolname
      t.integer :schoolclass
      t.string :address
      t.date :dateofbritgh
      t.integer :age
      t.integer :mobilephone
      t.integer :linephone
      t.integer :point
      t.references :classroom, foreign_key: true
      t.references :activities, foreign_key: true
      t.references :teacher, foreign_key: true
      t.references :attendings, foreign_key: true
      t.references :memorizationparts, foreign_key: true
      t.references :memorizationpage, foreign_key: true

      t.timestamps
    end
  end
end
