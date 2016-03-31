class DropRegion < ActiveRecord::Migration
  def down
      drop_table :regions
  end
end
