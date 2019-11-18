class Api::V1::WorkoutsController < ApplicationController
    include Secured

    def index
        group = Group.find(params[:group_id])
        workouts = Workout.where(group_id: group.id)

        options = {
            include: [:user]
        }

        render json: WorkoutSerializer.new(workouts, options)
    end

    def create
        user = current_user
        workout = user.workouts.build(workout_params)
        group = Group.find(params[:group_id])
        workouts = Workout.where(group_id: group.id)

        if !!params[:workout][:image]
            workout.image.attach(io: image_io, filename: image_name)
        end

        if workout.save
            render json: WorkoutSerializer.new(workouts)
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

    def image_io
        decoded_image = Base64.decode64(params[:workout][:image])
        StringIO.new(decoded_image)
    end
      
    def image_name
        params[:workout][:file_name]
    end

end
