class Tag < ApplicationRecord
  has_many :posts, through: :post_tags

  validates :name, presence: { message: "The name is empty." },
  uniqueness: { message: "The tag must be unique." }
end
