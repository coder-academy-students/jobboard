class Job < ApplicationRecord
  belongs_to :company
  belongs_to :job_type
  has_many :job_skills
  has_many :skills, through: :job_skills

  geocoded_by :full_address
  after_validation :geocode

  def full_address
    [address, city, state, country].compact.join(', ')
  end

  include Workflow
  workflow do
    state :new do
      event :submit, :transitions_to => :awaiting_approval
    end
    state :awaiting_approval do
      event :accept, :transitions_to => :live
      event :reject, :transitions_to => :rejected
    end
    state :live do
      event :hire, :transitions_to => :filled
      event :cancel, :transition_to => :cancelled
      event :archive, :transition_to => :archived
      event :expire, :transition_to => :expired
    end
    state :filled
    state :rejected
    state :cancelled
    state :archived
  end
end
