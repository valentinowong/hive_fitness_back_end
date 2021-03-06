class Workout < ApplicationRecord
    has_one_attached :image
    has_many :workout_tags
    has_many :tags, through: :workout_tags
    belongs_to :user
    belongs_to :group
end
