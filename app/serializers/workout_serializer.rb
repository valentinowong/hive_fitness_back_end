class WorkoutSerializer
  include FastJsonapi::ObjectSerializer
  attributes :datetime, :description, :approved
  belongs_to :user
  belongs_to :group
end
