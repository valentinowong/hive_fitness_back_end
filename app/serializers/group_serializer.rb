class GroupSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :start_date, :end_date, :active
  belongs_to :admin, key: :user_id
  has_many :workouts
  has_many :users
  has_many :goals
  has_many :penalties
end
