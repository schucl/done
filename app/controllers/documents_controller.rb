class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  def index
    @documents = Document.all
  end

  def show
  end

  def new
    @document = Document.new
  end

  def create
    @divorce = Divorce.find(params[:divorce_id])
    @document = Document.new(document_params)
    @document.divorce = @divorce
    if @document.save
    else
      render :new
    end
  end

  def edit
  end

  def update
    @document.update(document_params)
    if @document.save
    else
      render :new
    end
  end

  private
  def set_document
    @document = Document.find(params[:id])
  end

  def document_params
    params.require(:documents).permit(:doc_name, :description, :uploaded?, :category)
  end
end
