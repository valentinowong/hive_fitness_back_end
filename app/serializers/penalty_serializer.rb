class PenaltySerializer
  include FastJsonapi::ObjectSerializer
  attributes :goal_days, :amount
  belongs_to :group
end
