class AddColumnParticipantToParticipant < ActiveRecord::Migration
  def change
    add_column :participants, :participant, :string
  end
end
