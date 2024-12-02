class AddOwnerRefToRestaurants < ActiveRecord::Migration[8.0]
  def change
    add_reference :restaurants, :owner, null: false, foreign_key: true
  end
end
