class ChangColumnType < ActiveRecord::Migration[8.0]
  def change
    change_column(:restaurants, :postal_code, :integer)
    change_column(:restaurants, :owner_zip, :integer)
  end
end
