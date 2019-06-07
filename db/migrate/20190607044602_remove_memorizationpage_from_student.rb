class RemoveMemorizationpageFromStudent < ActiveRecord::Migration[5.2]
  def change
    remove_reference :students, :memorizationpage, foreign_key: true
  end
end
