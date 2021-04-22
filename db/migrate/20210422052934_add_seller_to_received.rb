class AddSellerToReceived < ActiveRecord::Migration[5.2]
  def change
    add_reference :receiveds, :seller, foreign_key: true
  end
end
