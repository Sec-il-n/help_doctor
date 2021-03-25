class CreateClinics < ActiveRecord::Migration[5.2]
  def change
    create_table :clinics do |t|
      t.string :name, null: false
      t.string :discription, null: false, default: ""
      t.bigint :address_id, null: false, default: 0
      t.bigint :subject_id, null: false, default: 0

      t.timestamps
    end
  end
end
