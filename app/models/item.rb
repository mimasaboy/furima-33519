class Item < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :comments

  def self.search(search)
    if search!=""
      Item.where('text LIKE(?)', "%#{search}%")
    else
      Item.all
    end
  end
end
