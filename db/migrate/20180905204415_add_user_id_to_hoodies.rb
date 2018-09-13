class AddUserIdToHoodies < ActiveRecord::Migration[5.2]
  def change
    add_column :hoodies, :user_id, :integer
  end
end
