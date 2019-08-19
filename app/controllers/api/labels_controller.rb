class Api::LabelsController < ApplicationController
    def index
    labels = Label.all  
    render json: labels
    end

    def show
    label = Label.find(params[:id])
    render json: label
    end
end
