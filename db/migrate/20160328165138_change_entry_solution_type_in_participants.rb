class ChangeEntrySolutionTypeInParticipants < ActiveRecord::Migration
  def self.up
      change_column :participants, :entry_solution, :text
      change_column :participants, :output_solution, :text
  end
 
  def self.down
    change_column :participants, :entry_solution, :string
    change_column :participants, :output_solution, :string
  end
end
