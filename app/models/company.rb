class Company < ActiveRecord::Base
  has_many :employees
  
  validates :name, presence: true
  
end