class AddStudnetToAttendings < ActiveRecord::Migration[5.2]
  def change
    add_reference :attendings, :student, foreign_key: true
  end
end
