class ArtistsController < ApplicationController
    before_action :get_artist, only: [:edit, :show, :update]

    def index
        @artists = Artist.all
    end

    def show
    end

    def new
        @artist = Artist.new
    end

    def edit
    end

    def create
        @artist = Artist.create(artist_params)
        redirect_to artist_path(@artist)
    end

    def update
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end



    private
    def get_artist
        @artist = Artist.find(params[:id])
    end

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end
end
