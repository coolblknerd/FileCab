class DocumentsController < ApplicationController
  before_action :find_doc, only: [:show, :update, :destroy, :edit]

  def index
    @docs = Document.all.order("created_at DESC")
  end

  def show
  end

  def new
    @doc = Document.new
  end

  def create
    @doc = Document.new(doc_params)

    if @doc.save
      redirect_to @doc
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_doc
    @doc = Document.find(params[:id])
  end

  def doc_params
    params.require(:document).permit(:title, :content)
  end

end
