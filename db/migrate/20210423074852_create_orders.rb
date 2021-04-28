class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :number
      t.date :answered_day
      t.references :received, foreign_key: true

      t.timestamps
    end
  end
end
