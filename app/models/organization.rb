class Organization < ActiveRecord::Base
  has_many :employees
    
  validates :name, presence: true
  validates :adress, presence: true
  validates :zip_code, presence: true, length: { maximum: 5 }
  validates :city, presence: true
  validates :parent_organization, presence: true
end
