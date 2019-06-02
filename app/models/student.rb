class Student < ApplicationRecord
  belongs_to :classroom
  belongs_to :activities
  belongs_to :teacher
  belongs_to :attendings
  belongs_to :memorizationparts
  belongs_to :memorizationpage
end
