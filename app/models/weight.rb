class Weight < ApplicationRecord
  validates :value, presence: true, numericality: true
end
