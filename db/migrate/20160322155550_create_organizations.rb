class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :adress
      t.integer :zip_code
      t.string :city
      t.string :parent_organization

      t.timestamps null: false
    end
  end
end
