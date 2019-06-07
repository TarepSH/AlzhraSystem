class RemoveStudnetsFromAttendings < ActiveRecord::Migration[5.2]
  def change
    remove_reference :attendings, :students, foreign_key: true
  end
end
