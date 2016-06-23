class Job < ApplicationRecord
  belongs_to :company
  belongs_to :job_type
  has_many :job_skills
  has_many :jobs, through: :job_skills
end
