class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.references :shop, foreign_key: true
      t.string :employee_name

      t.timestamps
    end
  end
end
