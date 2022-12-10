class UsersController < ApplicationController

        rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

        #skip_before_action :verify_authenticity_token
        before_action :authorize, only: [:show]
        # protect_from_forgery with: :null_session

        def index
            render json: User.all
        end
    
        def show
            user_id = decoded_token[0]['user_id']
            user = User.find(user_id)
            render json: user
        end


        def create
            user = User.create!(user_params)
            if user.valid?
                token = encode_token(user_id: user.id)
                render json: {user: user, jwt: token}, status: :created
            else
                render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
            end
        end
    
        private
        def render_not_found_response
            render json: { error: "User not found" }, status: :not_found
        end

        def user_params
            params.permit(:username, :email, :password, :picture_url)
        end

        def authorize
            render json: {error: "Not authorized"}, status: :unauthorized unless session.include? :user_id
        end
    
end
