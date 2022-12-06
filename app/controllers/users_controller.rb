class UsersController < ApplicationController
        rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

        skip_before_action :verify_authenticity_token
        before_action :authorize, only: [:show]

        def index
            render json: User.all
        end
    
        def show
            user=User.find_by(id:session[:user_id])
            render json: user, serializer: SingleUserSerializer
        end


        def create
           user=User.create(user_params)
           session[:user_id]=user.id
           if user.valid?
            render json: user, status: :created
           else
            render json: {errors: user.record.errors.full_messages}, status: :unprocessable_entity
           end
        end
    
        private
        def render_not_found_response
            render json: { error: "User not found" }, status: :not_found
        end

        def user_params
            params.permit(:username, :email, :password)
        end
        def authorize
            render json: {error: "Not authorized"}, status: :unauthorized unless session.include? :user_id
        end
    
end
