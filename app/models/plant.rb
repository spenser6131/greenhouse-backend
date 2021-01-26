class Plant < ApplicationRecord
  belongs_to :room

  validates :species, :light_needs, :humidity_needs, :water_frequency, :last_watering, :last_fertilization, presence: true
  validates :light_needs, :humidity_needs, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
end
