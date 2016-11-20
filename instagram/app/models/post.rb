class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :caption, length: { maximum: 160,
    too_long: "%{count} characters is the maximum allowed in a caption" }
end
