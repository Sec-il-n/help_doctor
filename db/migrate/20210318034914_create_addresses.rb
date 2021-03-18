class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :zip_code
      t.integer :prefecture_code
      t.string :address_row_1
      t.string :address_row_2
      t.integer :phone_number

      t.timestamps
    end
  end
end
