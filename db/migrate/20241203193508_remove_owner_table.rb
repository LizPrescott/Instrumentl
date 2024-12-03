require_relative "20241202163120_add_owner_ref_to_restaurants"
require_relative "20241202160917_create_owners"


class RemoveOwnerTable < ActiveRecord::Migration[8.0]
  def change
    revert AddOwnerRefToRestaurants
    revert CreateOwners

    change_table :restaurants do |t|
      t.string :owner_name
      t.string :owner_address
      t.string :owner_city
      t.string :owner_state
      t.string :owner_zip
    end
  end
end
