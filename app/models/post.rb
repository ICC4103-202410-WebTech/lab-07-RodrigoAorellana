class Post < ApplicationRecord
    belongs_to :user
    has_many :post_tags
    has_many :tags, through: :post_tags
    belongs_to :parent_post, class_name: "Post", optional: true
    has_many :child_posts, class_name: "Post", foreign_key:"parent_post_id", dependent: :destroy

    validates :title, presence: { message: "Enter the title" }
    validates :content, presence: { message: "You can not create a post without content." }
    validates :user_id, presence: { message: "It is important for a user to uploades it." }
    validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "The post must have 0 or more answers."  }
    validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: "El post must have 0 or more likes."  }

end
