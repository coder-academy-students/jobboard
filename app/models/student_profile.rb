class StudentProfile < ApplicationRecord
  belongs_to :user
  has_many :student_skills
  has_many :skills, through: :student_skills
end
