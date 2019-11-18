class User < ApplicationRecord
    has_one_attached :profile_photo
    has_many :user_groups
    has_many :groups, through: :user_groups
    has_many :goals, through: :user_groups
    has_many :messages
    has_many :workouts
    has_many :admin_groups, class_name: "Group", foreign_key: "admin_id"
end