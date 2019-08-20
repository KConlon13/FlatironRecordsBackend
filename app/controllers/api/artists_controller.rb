class Api::ArtistsController < ApplicationController
    def index
        artists = Artist.all    
        render json: artists
    end

    def show
        artist = Artist.find(params[:id])
        render json: artist
    end

    def create
        artist = Artist.new(artist_params)
        artist.save
        render json: artist
    end

    def update
        artist = Artist.find(params[:id])
        artist.update(artist_params)
        artist.save
        render json: artist
    end


    def destroy 
        artist = Artist.find(params[:id])
        artist.delete
        render json: artist
    end

    private

    def artist_params 
        params.require(:artist).permit(:name, :genre, :biography, :imageUrl, :likes, :label_id)
    end
end
