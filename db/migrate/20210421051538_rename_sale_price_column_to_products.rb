class RenameSalePriceColumnToProducts < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :sale_price, :sale_price_nb
  end
end
