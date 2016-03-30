class Participant < ActiveRecord::Base
  require 'csv'
  require 'open-uri'

  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :picture, matches: [/\png\Z/, /\jpe?g\Z/, ]
  validates_with AttachmentSizeValidator, attributes: :picture, less_than: 700.kilobytes

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Participant.create! row.to_hash
    end
  end
end
