class RemoveMemorizationpartsFromStudent < ActiveRecord::Migration[5.2]
  def change
    remove_reference :students, :memorizationparts, foreign_key: true
  end
end
