class Api::V1::UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def create
        
    end

    def update
        user = current_user
        user.update(user_params)
        if !user.errors
            render json: UserSerializer.new(user)
        else
            render json: {errors: user.errors.full_messages}, status: 422
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :first_name, :last_name)
    end

    # def photo_io
    #     decoded_image = Base64.decode64(params[:user][:profile_photo])
    #     StringIO.new(decoded_image)
    # end
      
    # def photo_name
    #     params[:user][:file_name]
    # end

end
