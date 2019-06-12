class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :title
      t.string :place
      t.date :activistdate
      t.datetime :startime
      t.datetime :endingtime
      t.integer :price

      t.timestamps
    end
  end
end
