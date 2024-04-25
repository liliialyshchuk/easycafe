class CreateDishes < ActiveRecord::Migration[7.1]
  def change
    create_table :dishes do |t|
      t.string :short_name
      t.text :description
      t.decimal :price, precision: 8, scale: 2, default: 0.0
      t.timestamps
    end
  end
end
