class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_attached_file :image, styles: { medium: "400x400#", thumb: "200x200#" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :caption, length: { maximum: 160,
    too_long: "%{count} characters is the maximum allowed in a caption" }
end
