class Student < ApplicationRecord
  belongs_to :classroom
  has_many :activities
  belongs_to :teacher
  has_many :attendings
  has_many :memorizationparts
  has_many :memorizationpage
end
