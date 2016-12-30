class Post < ApplicationRecord
	has_many :comments
  belongs_to :user

  validates :image, presence: true

	has_attached_file :image, styles: { :medium => "300x300" }
  validates_attachment_content_type :image, :content_type =>
/\Aimage\/.*\Z/
end
