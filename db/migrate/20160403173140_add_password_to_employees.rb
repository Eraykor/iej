class AddPasswordToEmployees < ActiveRecord::Migration
  def change
      add_column :employees, :crypted_password, :string
      add_column :employees, :salt, :string
  end
end
