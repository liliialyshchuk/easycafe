class Dish < ApplicationRecord
    belongs_to :category
    
    has_one_attached :dish_image

    has_many :feedbacks
    # has_many :users, through: :feedbacks

    validates :short_name, presence: true, length: {  maximum: 25 }
    validates :description, presence: true, length: { minimum: 5, maximum: 300 }
    validates :price, presence: true
    validates :dish_image, presence: true
    validates :category_id, presence: true

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "description", "id", "id_value", "price", "short_name", "updated_at", "feedbacks_id_eq"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["category", "dish_image_attachment", "dish_image_blob"]
    end   


end

