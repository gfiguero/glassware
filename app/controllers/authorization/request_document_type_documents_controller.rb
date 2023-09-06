class Authorization::RequestDocumentTypeDocumentsController < ApplicationController
  before_action :set_authorization_request_document_type_document, only: %i[ show edit update destroy ]

  # GET /authorization/request_document_type_documents or /authorization/request_document_type_documents.json
  def index
    @authorization_request_document_type_documents = Authorization::RequestDocumentTypeDocument.all
  end

  # GET /authorization/request_document_type_documents/1 or /authorization/request_document_type_documents/1.json
  def show
  end

  # GET /authorization/request_document_type_documents/new
  def new
    @authorization_request_document_type_document = Authorization::RequestDocumentTypeDocument.new
  end

  # GET /authorization/request_document_type_documents/1/edit
  def edit
  end

  # POST /authorization/request_document_type_documents or /authorization/request_document_type_documents.json
  def create
    @authorization_request_document_type_document = Authorization::RequestDocumentTypeDocument.new(authorization_request_document_type_document_params)

    respond_to do |format|
      if @authorization_request_document_type_document.save
        format.html { redirect_to authorization_request_document_type_document_url(@authorization_request_document_type_document), notice: "Request document type document was successfully created." }
        format.json { render :show, status: :created, location: @authorization_request_document_type_document }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorization_request_document_type_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorization/request_document_type_documents/1 or /authorization/request_document_type_documents/1.json
  def update
    respond_to do |format|
      if @authorization_request_document_type_document.update(authorization_request_document_type_document_params)
        format.html { redirect_to authorization_request_document_type_document_url(@authorization_request_document_type_document), notice: "Request document type document was successfully updated." }
        format.json { render :show, status: :ok, location: @authorization_request_document_type_document }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorization_request_document_type_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization/request_document_type_documents/1 or /authorization/request_document_type_documents/1.json
  def destroy
    @authorization_request_document_type_document.destroy

    respond_to do |format|
      format.html { redirect_to authorization_request_document_type_documents_url, notice: "Request document type document was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorization_request_document_type_document
      @authorization_request_document_type_document = Authorization::RequestDocumentTypeDocument.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorization_request_document_type_document_params
      params.require(:authorization_request_document_type_document).permit(:request_id, :document_type_id, :document_id)
    end
end
