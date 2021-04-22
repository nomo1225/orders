class AddColumnsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :remarks1, :string
    add_column :products, :remarks2, :string
    add_column :products, :sale_price_nk, :integer
    add_column :products, :sale_price_tt, :integer
  end
end
