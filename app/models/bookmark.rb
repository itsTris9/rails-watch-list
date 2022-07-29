class Bookmark < ApplicationRecord
  belongs_to :movie_id
  belongs_to :list_id

  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: "is already in the list" }
end
