class GenresController < ApplicationController
    before_action :get_genre, only: [:show, :edit, :update]

    def index
        @genres = Genre.all
    end

    def new
        @genre = Genre.new
    end

    def show
    end

    def edit
    end

    def create
        @genre = Genre.create(genre_params)
        redirect_to genre_path(@genre)
    end

    def update
        @genre.update(genre_params)
        redirect_to genre_path(@genre)
    end

    private
    def get_genre
        @genre = Genre.find(params[:id])
    end

    def genre_params
        params.require(:genre).permit(:name)
    end

end
