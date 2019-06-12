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

      t.timestamps
    end
  end
end
