class Student < ApplicationRecord
  belongs_to :classroom
  has_and_belongs_to_many :attendings
  has_many :memorizationparts
  has_many :memorizationpages
  has_many :trips
end
