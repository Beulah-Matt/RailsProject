class JwtController < ApplicationController
    before_action :authorized, only:[:destroy]
    def create
        user = User.find_by!(username: params[:username])
        if user &.authenticate(params[:password])
            token = encode_token(user_id: user.id)
            render json: { user: UserSerializer.new(user), jwt: token }, status: :accepted
        else
            render json: { errors: "Invalid email or password" }, status: :unauthorized
        end
    end

    def destroy
        head :no_content
    end
end