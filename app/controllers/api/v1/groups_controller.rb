class Api::V1::GroupsController < ApplicationController
    include Secured

    def index
        user = current_user
        groups = user.groups
        options = {
            include: [:admin]
        }
        render json: {groups: GroupSerializer.new(groups, options), current_user: UserSerializer.new(user)}
    end

    def create
        admin = current_user
        group = admin.admin_groups.build(group_params)
        if group.save
            render json: group
        else
            render json: {errors: group.errors.full_messages}, status: 422
        end
    end

    def show
        user = current_user
        group = Group.find(params[:id])
        options = {
            include: [:users, :workouts, :admin, :goals]
        }
        render json: GroupSerializer.new(group, options)
    end

    private

    def group_params
        params.require(:group).permit(:name, :start_date, :end_date, :active, :admin_id)
    end

end
