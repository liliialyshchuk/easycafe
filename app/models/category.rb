class Category < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: { minimum: 5, maximum: 15 }
    has_many :dishes

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "name", "updated_at"]
    end
end
