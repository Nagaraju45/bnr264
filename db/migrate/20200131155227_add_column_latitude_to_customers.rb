class AddColumnLatitudeToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :latitude, :string
  end
end
