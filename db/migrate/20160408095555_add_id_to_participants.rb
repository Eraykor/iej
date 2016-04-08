class AddIdToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :employee_id, :integer
    add_column :participants, :dispositif_id, :integer
  end
end
