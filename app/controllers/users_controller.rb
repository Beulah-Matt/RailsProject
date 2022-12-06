class UsersController < ApplicationController
        rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
        def index
            render json: User.all
        end
    
        def show
            user = User.find(params[:id])
            render json: user, serializer: SingleUserSerializer
        end
    
        private
        def render_not_found_response
            render json: { error: "User not found" }, status: :not_found
        end
    
end
