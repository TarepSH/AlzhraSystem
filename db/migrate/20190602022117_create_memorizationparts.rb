class CreateMemorizationparts < ActiveRecord::Migration[5.2]
  def change
    create_table :memorizationparts do |t|
      t.string :name

      t.timestamps
    end
  end
end
