class Feedback < ActiveRecord::Migration[7.1]
  def change
    create_table :feedbacks do |t|
      t.integer :user_id
      t.integer :dish_id
      t.text :comment
      t.integer :rating
    end
  end
end
