class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :rating, inclusion: { in: 1..5 }
  validates :rating, presence: true

  validate :movie_can_only_belong_to_one_list

  def self.average_for(movie, list)
    where(movie: movie, list: list)
      .where.not(rating: nil)
      .average(:rating)
      &.round(1)
  end

  private

  def movie_can_only_belong_to_one_list
    return unless movie_id.present?
    existing_bookmark = Bookmark.where(movie_id: movie_id).where.not(list_id: list_id).exists?

    if existing_bookmark
      errors.add(:movie, "can only belong to one list")
    end
  end
end
