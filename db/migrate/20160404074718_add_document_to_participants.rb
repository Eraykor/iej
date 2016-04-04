class AddDocumentToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :document, :string
  end
end
