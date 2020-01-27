class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.string :address
      t.string :lattitude
      t.string :longitude

      t.timestamps
    end
  end
end
