class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :regular_price
      t.integer :discount
      t.integer :sale_price

      t.timestamps
    end
  end
end
