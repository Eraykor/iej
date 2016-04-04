class AddPasswordToAdminEmployees < ActiveRecord::Migration
  def change
      add_column :admin_employees, :crypted_password, :string
      add_column :admin_employees, :salt, :string
  end
end
