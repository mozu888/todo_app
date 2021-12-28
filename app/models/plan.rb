class Plan < ApplicationRecord
  with_options presence true do
    validates :title
    validates :text
    validates :time
    validates :date
  end
  validates :category_id, numericality: { other_than: 1, message: "can't be blank" }
end
