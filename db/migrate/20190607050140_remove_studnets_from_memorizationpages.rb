class RemoveStudnetsFromMemorizationpages < ActiveRecord::Migration[5.2]
  def change
    remove_reference :memorizationpages, :students, foreign_key: true
  end
end
