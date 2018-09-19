class AddImageToHoodies < ActiveRecord::Migration[5.2]
  def change
    add_column :hoodies, :image, :json
  end
end
