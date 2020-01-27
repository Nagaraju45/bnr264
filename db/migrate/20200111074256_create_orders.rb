class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :customer_id
      t.string :product
      t.string :quantity
      t.string :price
      t.string :date

      t.timestamps
    end
  end
end
