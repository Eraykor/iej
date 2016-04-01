class Employee < ActiveRecord::Base
  @participants = Participant.all
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :organization, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
