class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :full_address, :string 
    create_table :locations do |t|
      t.string :village
      t.string :mandal
      t.string :district
      t.string :state
      t.string :country
      # t.string :full_address
      t.string :latitude
      t.string :longitude
      

      t.timestamps
    end
  end
end
