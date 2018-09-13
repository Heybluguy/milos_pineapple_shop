class CreateHoodies < ActiveRecord::Migration[5.2]
  def change
    create_table :hoodies do |t|
      t.string :brand
      t.text :description
      t.string :size
      t.string :title
      t.decimal :price, precision: 5, scale: 2, default: 0

      t.timestamps
    end
  end
end
