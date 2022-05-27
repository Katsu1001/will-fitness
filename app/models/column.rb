class Column < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  
  with_options presence: true do
    validates :name
    validates :introduction
    validates :category_id
    validates :part_id
  end
end
