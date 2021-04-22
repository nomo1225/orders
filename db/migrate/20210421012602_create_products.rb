class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :supplier
      t.string :name
      t.string :details
      t.string :unit
      t.integer :purchase_price
      t.integer :sale_price

      t.timestamps
    end
  end
end
