class Authorization::WorkerDocumentsController < ApplicationController
  before_action :set_authorization_worker_document, only: %i[ show edit update destroy ]

  # GET /authorization/worker_documents or /authorization/worker_documents.json
  def index
    @authorization_worker_documents = Authorization::WorkerDocument.all
  end

  # GET /authorization/worker_documents/1 or /authorization/worker_documents/1.json
  def show
  end

  # GET /authorization/worker_documents/new
  def new
    @authorization_worker_document = Authorization::WorkerDocument.new
  end

  # GET /authorization/worker_documents/1/edit
  def edit
  end

  # POST /authorization/worker_documents or /authorization/worker_documents.json
  def create
    @authorization_worker_document = Authorization::WorkerDocument.new(authorization_worker_document_params)

    respond_to do |format|
      if @authorization_worker_document.save
        format.html { redirect_to authorization_worker_document_url(@authorization_worker_document), notice: "Worker document was successfully created." }
        format.json { render :show, status: :created, location: @authorization_worker_document }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorization_worker_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorization/worker_documents/1 or /authorization/worker_documents/1.json
  def update
    respond_to do |format|
      if @authorization_worker_document.update(authorization_worker_document_params)
        format.html { redirect_to authorization_worker_document_url(@authorization_worker_document), notice: "Worker document was successfully updated." }
        format.json { render :show, status: :ok, location: @authorization_worker_document }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorization_worker_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization/worker_documents/1 or /authorization/worker_documents/1.json
  def destroy
    @authorization_worker_document.destroy

    respond_to do |format|
      format.html { redirect_to authorization_worker_documents_url, notice: "Worker document was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorization_worker_document
      @authorization_worker_document = Authorization::WorkerDocument.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorization_worker_document_params
      params.require(:authorization_worker_document).permit(:contact_id, :document_type_id, :request_worker_profile_id, :created_at, :updated_at, :file_file_name, :file_content_type, :file_file_size, :file_updated_at, :state, :expiration_date, :user_id, :authorization_date, :workerable_worker_id, :deleted_at, :worker_document_version_id)
    end
end
