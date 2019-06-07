class RemoveStudnetFromMemorizationparts < ActiveRecord::Migration[5.2]
  def change
    remove_reference :memorizationparts, :student, foreign_key: true
  end
end
