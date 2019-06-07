class RemoveStudnetFromMemorizationpages < ActiveRecord::Migration[5.2]
  def change
    remove_reference :memorizationpages, :student, foreign_key: true
  end
end
