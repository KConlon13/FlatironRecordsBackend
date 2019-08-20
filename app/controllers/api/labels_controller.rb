class Api::LabelsController < ApplicationController
    def index
    labels = Label.all  
    render json: labels
    end

    def show
    label = Label.find(params[:id])
    render json: label
    end

    # def update
    # label = Label.find(params[:id])
    # # label.update(code_name: params[:code_name])

    # render json: label
    # end

    
end
