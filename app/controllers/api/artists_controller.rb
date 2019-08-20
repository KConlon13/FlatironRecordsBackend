class Api::ArtistsController < ApplicationController
    def index
        artists = Artist.all    
        render json: artists
    end

    def show
        artist = Artist.find(params[:id])
        render json: artist
    end

    # def create
    #     # artist = Artist.create(label_id: params[:label_id], artifact_id: params[:artifact_id])
    #     ## Something here, need to figure out the params for creating artist
    #     # artifact = Artifact.find(params[:artifact_id])
    # end
end
