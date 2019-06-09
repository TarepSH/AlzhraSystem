class AddMobilephone2ToStudent < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :mobilephon2, :integer
  end
end
