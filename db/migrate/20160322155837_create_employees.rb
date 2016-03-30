class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :last_name
      t.string :first_name
      t.string :organization
      t.integer :phone
      t.string :email
      t.string :id_number

      t.timestamps null: false
    end
  end
end
