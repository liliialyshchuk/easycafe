class Dish < ApplicationRecord
    validates :short_name, presence: true, length: { minimum: 5, maximum: 15 }
    validates :description, presence: true, length: { minimum: 5, maximum: 100 }
    validates :price, presence: true

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "description", "id", "id_value", "price", "short_name", "updated_at"]
    end
end