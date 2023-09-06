class Aim::Authorization::CurrentWorkerDocumentsController < ApplicationController
  before_action :set_aim_authorization_current_worker_document, only: %i[ show edit update destroy ]

  # GET /aim/authorization/current_worker_documents or /aim/authorization/current_worker_documents.json
  def index
    @aim_authorization_current_worker_documents = Aim::Authorization::CurrentWorkerDocument.all
  end

  # GET /aim/authorization/current_worker_documents/1 or /aim/authorization/current_worker_documents/1.json
  def show
  end

  # GET /aim/authorization/current_worker_documents/new
  def new
    @aim_authorization_current_worker_document = Aim::Authorization::CurrentWorkerDocument.new
  end

  # GET /aim/authorization/current_worker_documents/1/edit
  def edit
  end

  # POST /aim/authorization/current_worker_documents or /aim/authorization/current_worker_documents.json
  def create
    @aim_authorization_current_worker_document = Aim::Authorization::CurrentWorkerDocument.new(aim_authorization_current_worker_document_params)

    respond_to do |format|
      if @aim_authorization_current_worker_document.save
        format.html { redirect_to aim_authorization_current_worker_document_url(@aim_authorization_current_worker_document), notice: "Current worker document was successfully created." }
        format.json { render :show, status: :created, location: @aim_authorization_current_worker_document }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_authorization_current_worker_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/authorization/current_worker_documents/1 or /aim/authorization/current_worker_documents/1.json
  def update
    respond_to do |format|
      if @aim_authorization_current_worker_document.update(aim_authorization_current_worker_document_params)
        format.html { redirect_to aim_authorization_current_worker_document_url(@aim_authorization_current_worker_document), notice: "Current worker document was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_authorization_current_worker_document }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_authorization_current_worker_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/authorization/current_worker_documents/1 or /aim/authorization/current_worker_documents/1.json
  def destroy
    @aim_authorization_current_worker_document.destroy

    respond_to do |format|
      format.html { redirect_to aim_authorization_current_worker_documents_url, notice: "Current worker document was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_authorization_current_worker_document
      @aim_authorization_current_worker_document = Aim::Authorization::CurrentWorkerDocument.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_authorization_current_worker_document_params
      params.require(:aim_authorization_current_worker_document).permit(:request_workerable_worker_id, :worker_document_id)
    end
end
