class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_id
      t.string :name
      t.string :unit
      t.string :unit_price
      t.string :date

      t.timestamps
    end
  end
end
