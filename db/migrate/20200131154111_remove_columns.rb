class RemoveColumns < ActiveRecord::Migration[6.0]
  def change
    
  end
  def self.up
    remove_column :customers, :lattitude
  end
end
