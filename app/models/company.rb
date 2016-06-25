class Company < ApplicationRecord
  belongs_to :user
  has_many :jobs, dependent: :destroy

  scope :alphabetical, -> { order(name: :asc) }

  def approve
    update_attributes(approved: true)
  end
end
