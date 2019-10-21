class WorkoutSerializer
  include FastJsonapi::ObjectSerializer
  include ImageHelper # mixes in your helper method as class method

  attributes :datetime, :description, :approved, :image_url
  belongs_to :user
  belongs_to :group

  attribute :image_url do |workout|
    image_url(workout)
  end

end