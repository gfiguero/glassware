class Authorization::ProvisionRequestTypesController < ApplicationController
  before_action :set_authorization_provision_request_type, only: %i[ show edit update destroy ]

  # GET /authorization/provision_request_types or /authorization/provision_request_types.json
  def index
    @authorization_provision_request_types = Authorization::ProvisionRequestType.all
  end

  # GET /authorization/provision_request_types/1 or /authorization/provision_request_types/1.json
  def show
  end

  # GET /authorization/provision_request_types/new
  def new
    @authorization_provision_request_type = Authorization::ProvisionRequestType.new
  end

  # GET /authorization/provision_request_types/1/edit
  def edit
  end

  # POST /authorization/provision_request_types or /authorization/provision_request_types.json
  def create
    @authorization_provision_request_type = Authorization::ProvisionRequestType.new(authorization_provision_request_type_params)

    respond_to do |format|
      if @authorization_provision_request_type.save
        format.html { redirect_to authorization_provision_request_type_url(@authorization_provision_request_type), notice: "Provision request type was successfully created." }
        format.json { render :show, status: :created, location: @authorization_provision_request_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorization_provision_request_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorization/provision_request_types/1 or /authorization/provision_request_types/1.json
  def update
    respond_to do |format|
      if @authorization_provision_request_type.update(authorization_provision_request_type_params)
        format.html { redirect_to authorization_provision_request_type_url(@authorization_provision_request_type), notice: "Provision request type was successfully updated." }
        format.json { render :show, status: :ok, location: @authorization_provision_request_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorization_provision_request_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization/provision_request_types/1 or /authorization/provision_request_types/1.json
  def destroy
    @authorization_provision_request_type.destroy

    respond_to do |format|
      format.html { redirect_to authorization_provision_request_types_url, notice: "Provision request type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorization_provision_request_type
      @authorization_provision_request_type = Authorization::ProvisionRequestType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorization_provision_request_type_params
      params.require(:authorization_provision_request_type).permit(:provision_id, :request_type_id, :created_at, :updated_at, :deleted_at)
    end
end
