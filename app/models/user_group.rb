class UserGroup < ApplicationRecord
    has_many :goals
    belongs_to :user
    belongs_to :group
end