class CreateLandmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :landmarks do |t|
      t.string :name
      t.string :age
      t.string :phone_no
      t.string :address
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
