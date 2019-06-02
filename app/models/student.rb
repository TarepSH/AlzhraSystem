class Student < ApplicationRecord
  belongs_to :classroom
  has_many :attendings
  has_many :memorizationparts
  has_many :memorizationpage
  has_many :trips
end
