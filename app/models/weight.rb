class Weight < ApplicationRecord
  validates :value, presence: true, numericality: true
  validates :date, presence: true
end
