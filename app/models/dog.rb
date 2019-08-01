class Dog < ApplicationRecord
    has_many :dog_sitters
    belongs_to :city
end
