class Api::V1::WorkoutsController < ApplicationController
    include Secured

    def index
    end

    def create
        user = current_user
        workout = user.workouts.build(workout_params)
        if workout.save
            render json: WorkoutSerializer.new(workout)
        else
            render json: {errors: workout.errors.full_messages}, status: 422
        end
    end

    def show
    end
    
    private

    def workout_params
        params.require(:workout).permit(:user_id, :group_id, :datetime, :description, :approved)
    end

end
