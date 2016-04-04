class AddAttachmentDocumentToParticipants < ActiveRecord::Migration
  def self.up
    change_table :participants do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :participants, :document
  end
end
