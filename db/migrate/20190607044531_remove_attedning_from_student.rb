class RemoveAttedningFromStudent < ActiveRecord::Migration[5.2]
  def change
    remove_reference :students, :attedning, foreign_key: true
  end
end
