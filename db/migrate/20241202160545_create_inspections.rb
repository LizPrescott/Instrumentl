class CreateInspections < ActiveRecord::Migration[8.0]
  def change
    create_table :inspections do |t|
      t.integer :inspection_score
      t.date :inspection_date
      t.integer :inspection_type
      t.date :violation_date
      t.integer :violation_type
      t.integer :risk_category
      t.text :description
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
