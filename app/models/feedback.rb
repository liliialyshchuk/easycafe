class Feedback < ApplicationRecord
    validates :user_id, presence: true
    validates :dish_id, presence: true
    validates :comment, presence: true
    validates :rating, presence: true, inclusion: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    belongs_to :user
    belongs_to :dish
end