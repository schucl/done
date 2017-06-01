class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  def index
    @documents = Document.all
  end

  def show
  end

  def new
    @document = Document.new
    @divorce = Divorce.find(params[:divorce_id])
  end

  def create
    @divorce = Divorce.find(params[:divorce_id])
    @document = Document.new(document_params)
    @document.divorce = @divorce
    if @document.save
      redirect_to etat_civil_divorce_documents_path(@divorce)
    else
      render :new
    end
  end

  def etat_civil
    @document = Document.new
    @divorce = Divorce.find(params[:divorce_id])
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
    params.require(:document).permit(:doc_name, :description, :uploaded?, :category, :attachment, :attachment_cache)
  end
end
