class Dog < ApplicationRecord
    belongs_to :owner
    has_many :walks
    has_many :walkers, through: :walks
end
