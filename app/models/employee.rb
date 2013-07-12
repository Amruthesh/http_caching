class Employee < ActiveRecord::Base
  belongs_to :company, touch: true
  
  validates :company_id, presence: true
  validates :name, presence: true
  
  store_accessor :salary, [:fixed, :variable]
  
end