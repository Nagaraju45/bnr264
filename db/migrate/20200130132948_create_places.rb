class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :title
      t.string :address
      t.string :latitude
      t.string :longitude
      t.string :visted_by

      t.timestamps
    end
  end
end
