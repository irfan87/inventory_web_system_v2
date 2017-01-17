class CreateOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :owners do |t|
      t.string :owner_name
      t.string :owner_phone_number
      t.string :owner_email_address

      t.timestamps
    end
  end
end
