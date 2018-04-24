class Api::V1::FoldersController < ApplicationController

  def index
    @folders = Folder.all
    render json: @folders
  end

  def show
    @folder = Folder.find(params[:id])
    render json: @folder
  end

  def create
    @folder = Folder.new(folder_params)
    if @folder.valid?
      @folder.save
      render json: @folder
    end
  end


  private
  def folder_params
    params.require(:folder).permit(:name)
  end

end
