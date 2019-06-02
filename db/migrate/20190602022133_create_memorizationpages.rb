class CreateMemorizationpages < ActiveRecord::Migration[5.2]
  def change
    create_table :memorizationpages do |t|
      t.string :name
      t.references :students, foreign_key: true

      t.timestamps
    end
  end
end
