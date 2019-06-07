class RemoveStudnetsFromMemorizationparts < ActiveRecord::Migration[5.2]
  def change
    remove_reference :memorizationparts, :students, foreign_key: true
  end
end
