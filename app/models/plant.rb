class Plant < ApplicationRecord
  belongs_to :space, optional: true

  validates :species, :light_requirement, :humidity_requirement, :water_frequency, :last_watering, :last_fertilization, presence: true
  validates :light_requirement, :humidity_requirement, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5}

  scope :unassigned, -> {where(space_id: nil)}
end
