class Group < ApplicationRecord
    has_many :user_groups
    has_many :users, through: :user_groups
    has_many :goals, through: :user_groups
    has_many :messages
    has_many :workouts
    has_many :penalties
    belongs_to :admin, class_name: "User", foreign_key: "admin_id"
end