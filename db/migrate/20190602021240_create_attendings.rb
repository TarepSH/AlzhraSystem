class CreateAttendings < ActiveRecord::Migration[5.2]
  def change
    create_table :attendings do |t|
      t.date :day

      t.timestamps
    end
  end
end
