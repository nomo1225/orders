class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.string :company
      t.string :post_number
      t.string :address

      t.timestamps
    end
  end
end
