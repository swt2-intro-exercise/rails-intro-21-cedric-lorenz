class Paper < ApplicationRecord
    validates :title, :venue, presence: true
    validates :year, presence: true, numericality: true
end
