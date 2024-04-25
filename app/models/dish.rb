class Dish < ApplicationRecord
    validates :short_name, presence: true, length: { minimum: 5, maximum: 15 }
    validates :description, presence: true, length: { minimum: 5, maximum: 100 }
    validates :price, presence: true
end