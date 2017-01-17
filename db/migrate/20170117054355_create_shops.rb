class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.references :owner, foreign_key: true
      t.string :shop_name
      t.string :shop_address
      t.integer :shop_postcode
      t.string :shop_phone_number
      t.string :shop_other_phone_number
      t.string :shop_fax_number

      t.timestamps
    end
  end
end
