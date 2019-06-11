class Student < ApplicationRecord
  belongs_to :classroom
  has_and_belongs_to_many :attendings
  has_and_belongs_to_many  :memorizationparts
  has_and_belongs_to_many  :memorizationpages
  has_and_belongs_to_many :trips

  accepts_nested_attributes_for :memorizationparts  
end
