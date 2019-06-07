class AddStudnetToMemorizationpart < ActiveRecord::Migration[5.2]
  def change
    add_reference :memorizationparts, :student, foreign_key: true
  end
end
