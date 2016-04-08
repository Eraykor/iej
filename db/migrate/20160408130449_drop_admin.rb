class DropAdmin < ActiveRecord::Migration
  def change
      drop_table :admin_employees
  end
end
