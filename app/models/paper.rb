class Paper < ApplicationRecord
    validates :title, :venue, presence: true
    validates :year, presence: true, numericality: true
    has_and_belongs_to_many :authors
    scope :filter_by_year, -> (year) { where('year = ?', year) }
end
