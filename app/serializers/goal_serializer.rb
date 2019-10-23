class GoalSerializer
  include FastJsonapi::ObjectSerializer
  attributes :week_number, :goal_days
  belongs_to :user
  belongs_to :group
end
