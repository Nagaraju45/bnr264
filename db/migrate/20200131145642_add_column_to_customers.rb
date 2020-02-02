class AddColumnToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :village, :string
    add_column :customers, :mandal, :string
    add_column :customers, :district, :string
    add_column :customers, :state, :string
    add_column :customers, :country, :string
  end
end
