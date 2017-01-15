class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.references :employee, foreign_key: true
      t.string :shop_address
      t.integer :shop_postcode
      t.string :shop_phone_number

      t.timestamps
    end
  end
end
