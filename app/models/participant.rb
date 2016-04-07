class Participant < ActiveRecord::Base
  require 'csv'

  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :picture, matches: [/\png\Z/, /\jpe?g\Z/, ]
  validates_with AttachmentSizeValidator, attributes: :picture, less_than: 700.kilobytes

  has_attached_file :document
  validates_attachment :document, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf)}
  validates_with AttachmentSizeValidator, attributes: :document, less_than: 1000.kilobytes

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :birth_date, presence: true
  validates :place_of_birth, presence: true
  validates :id_number, presence: true
  validates :adress, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true
  validates :phone, presence: true
  validates :mobile, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :affiliation_process, presence: true
  validates :entry_process, presence: true
  validates :expected_process, presence: true
  validates :entry_solution, presence: true
  validates :output_solution, presence: true
  validate :max_26

  def max_26
    if self.birth_date
        errors.add(:birth_date, 'interdit aux plus de 26 ans.') if self.birth_date <= 26.years.ago.to_date
    end
  end
            
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Participant.create! row.to_hash
    end
  end
end
