class Conversion < ApplicationRecord
    validates :base, presence: true, numericality: { only_integer: true, greater_than: 1 }
    validates :input_number, presence: true, numericality: { only_integer: true }
end
