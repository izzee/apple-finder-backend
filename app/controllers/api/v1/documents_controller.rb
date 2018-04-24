class Api::V1::DocumentsController < ApplicationController

  def index
    @documents = Document.all
    render json: @documents
  end

  def show
    @document = Document.find(params[:id])
    render json: @document
  end

  def create
    @document = Document.new(document_params)
    if @document.valid?
      @document.save
      render json: @document
    end
  end


  private
  def document_params
    params.require(:document).permit(:name, :folderId)
  end

end
