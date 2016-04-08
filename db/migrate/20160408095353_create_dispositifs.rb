class CreateDispositifs < ActiveRecord::Migration
  def change
    create_table :dispositifs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
