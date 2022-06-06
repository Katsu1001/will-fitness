class Column < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :part

  belongs_to :user
  has_one_attached :image
  has_many :comments
  
  #ジャンルの選択が「--」の時は保存できないようにする
  validates :category_id,:part_id, numericality: { other_than: 0}
  
  with_options presence: true do
    validates :name
    validates :conclusion
    validates :reference
    validates :category_id
    validates :part_id
  end
end
