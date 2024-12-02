class CreateRestaurants < ActiveRecord::Migration[8.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :phone_number

      t.timestamps
    end
  end
end
