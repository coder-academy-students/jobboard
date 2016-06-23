class Skill < ApplicationRecord
  has_many :job_skills
  has_many :jobs, through: :job_skills
  has_many :student_skills
  has_many :student_profiles, through: :student_skills
end
