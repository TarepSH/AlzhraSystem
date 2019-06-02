class RemoveActivitiesFromStudent < ActiveRecord::Migration[5.2]
  def change
    remove_reference :students, :activities, foreign_key: true
  end
end
