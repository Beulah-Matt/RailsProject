class MoviesController < ApplicationController
    rescue_from  ActiveRecord::RecordNotFound, with: :render_not_found 

    rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_records 
    #Setting our Movie controllers
    def index 
        #getting our instance 
        movie = Movie.all
        #rendering our json
        render json: movie
    end

    def show
        #getting our instance 
        movie = get_movie
        render json: movie
    end

    def create
        movie = Movie.create!(movie_params)
        #rendering our json
        render json: movie 
    end

    def destroy
        restaurant = get_movie
        restaurant.destroy

    end

    private 
    def movie_params
        params.permit(:name, :description, :movie_url)
    end

    def get_movie
        #find_by returns null empty 
        #find returns active records exception 
        Movie.find(params[:id])

    end

    #creating our render_not_found method 
    def render_not_found
        render json: {error: "Movie  not found "}, status: :not_found #404
        
    end
    #creating our render_invalid_records method 
    def render_invalid_records(invalid) 
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity
    end
end
