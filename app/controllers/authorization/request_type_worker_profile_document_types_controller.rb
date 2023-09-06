class Authorization::RequestTypeWorkerProfileDocumentTypesController < ApplicationController
  before_action :set_authorization_request_type_worker_profile_document_type, only: %i[ show edit update destroy ]

  # GET /authorization/request_type_worker_profile_document_types or /authorization/request_type_worker_profile_document_types.json
  def index
    @authorization_request_type_worker_profile_document_types = Authorization::RequestTypeWorkerProfileDocumentType.all
  end

  # GET /authorization/request_type_worker_profile_document_types/1 or /authorization/request_type_worker_profile_document_types/1.json
  def show
  end

  # GET /authorization/request_type_worker_profile_document_types/new
  def new
    @authorization_request_type_worker_profile_document_type = Authorization::RequestTypeWorkerProfileDocumentType.new
  end

  # GET /authorization/request_type_worker_profile_document_types/1/edit
  def edit
  end

  # POST /authorization/request_type_worker_profile_document_types or /authorization/request_type_worker_profile_document_types.json
  def create
    @authorization_request_type_worker_profile_document_type = Authorization::RequestTypeWorkerProfileDocumentType.new(authorization_request_type_worker_profile_document_type_params)

    respond_to do |format|
      if @authorization_request_type_worker_profile_document_type.save
        format.html { redirect_to authorization_request_type_worker_profile_document_type_url(@authorization_request_type_worker_profile_document_type), notice: "Request type worker profile document type was successfully created." }
        format.json { render :show, status: :created, location: @authorization_request_type_worker_profile_document_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorization_request_type_worker_profile_document_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorization/request_type_worker_profile_document_types/1 or /authorization/request_type_worker_profile_document_types/1.json
  def update
    respond_to do |format|
      if @authorization_request_type_worker_profile_document_type.update(authorization_request_type_worker_profile_document_type_params)
        format.html { redirect_to authorization_request_type_worker_profile_document_type_url(@authorization_request_type_worker_profile_document_type), notice: "Request type worker profile document type was successfully updated." }
        format.json { render :show, status: :ok, location: @authorization_request_type_worker_profile_document_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorization_request_type_worker_profile_document_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization/request_type_worker_profile_document_types/1 or /authorization/request_type_worker_profile_document_types/1.json
  def destroy
    @authorization_request_type_worker_profile_document_type.destroy

    respond_to do |format|
      format.html { redirect_to authorization_request_type_worker_profile_document_types_url, notice: "Request type worker profile document type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorization_request_type_worker_profile_document_type
      @authorization_request_type_worker_profile_document_type = Authorization::RequestTypeWorkerProfileDocumentType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorization_request_type_worker_profile_document_type_params
      params.require(:authorization_request_type_worker_profile_document_type).permit(:worker_profile_id, :document_type_id)
    end
end
