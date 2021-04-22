class CreateReceiveds < ActiveRecord::Migration[5.2]
  def change
    create_table :receiveds do |t|
      t.string :number
      t.date :desired_day
      t.string :name
      t.references :place, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
