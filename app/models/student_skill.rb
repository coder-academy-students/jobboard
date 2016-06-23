class StudentSkill < ApplicationRecord
  belongs_to :student_profile
  belongs_to :skill
end
