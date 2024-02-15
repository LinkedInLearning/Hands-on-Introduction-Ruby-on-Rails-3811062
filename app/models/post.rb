class Post < ApplicationRecord
  has_one_attached :image

  validates :description, :image, presence: true
  validates :description, length: { minimum: 5 }
  validate :description_must_be_at_least_three_words

  def description_must_be_at_least_three_words
    if description.split.length < 3
      errors.add(:description, "must be at least 3 words")
    end
  end
end
