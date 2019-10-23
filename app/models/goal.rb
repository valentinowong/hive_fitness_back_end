class Goal < ApplicationRecord
    belongs_to :user_group

    def user
        user_group.user
    end

    def user_id
        user.id
    end

    def group
        user_group.group
    end

    def group_id
        group.id
    end

end