class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :zip_code
      t.integer :prefecture_code
      t.string :address, null: false
      t.string :address_2
      t.integer :phone_number
      t.float :longitude
      t.float :latitude
      t.timestamps
    end
  end
end
