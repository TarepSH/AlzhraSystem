class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :title
      t.string :place
      t.date :activistdate
      t.datetime :startime
      t.datetime :endingtime
      t.integer :price
      t.references :students, foreign_key: true

      t.timestamps
    end
  end
end
