class Authorization::RequestTypesController < ApplicationController
  before_action :set_authorization_request_type, only: %i[ show edit update destroy ]

  # GET /authorization/request_types or /authorization/request_types.json
  def index
    @authorization_request_types = Authorization::RequestType.all
  end

  # GET /authorization/request_types/1 or /authorization/request_types/1.json
  def show
  end

  # GET /authorization/request_types/new
  def new
    @authorization_request_type = Authorization::RequestType.new
  end

  # GET /authorization/request_types/1/edit
  def edit
  end

  # POST /authorization/request_types or /authorization/request_types.json
  def create
    @authorization_request_type = Authorization::RequestType.new(authorization_request_type_params)

    respond_to do |format|
      if @authorization_request_type.save
        format.html { redirect_to authorization_request_type_url(@authorization_request_type), notice: "Request type was successfully created." }
        format.json { render :show, status: :created, location: @authorization_request_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorization_request_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorization/request_types/1 or /authorization/request_types/1.json
  def update
    respond_to do |format|
      if @authorization_request_type.update(authorization_request_type_params)
        format.html { redirect_to authorization_request_type_url(@authorization_request_type), notice: "Request type was successfully updated." }
        format.json { render :show, status: :ok, location: @authorization_request_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorization_request_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization/request_types/1 or /authorization/request_types/1.json
  def destroy
    @authorization_request_type.destroy

    respond_to do |format|
      format.html { redirect_to authorization_request_types_url, notice: "Request type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorization_request_type
      @authorization_request_type = Authorization::RequestType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorization_request_type_params
      params.require(:authorization_request_type).permit(:name, :store, :infrastructure, :created_at, :updated_at, :map_id, :description, :deleted_at, :anticipation_time, :add_description_to_email, :global_map_options, :attachment_number, :check_store_request_auth, :start_working_hour, :end_working_hours, :document_type_id, :max_duration, :max_workers_number, :terms_and_conditions_to_save, :from_hour_to_create, :until_hour_to_create, :show_declaration, :update_until_approved, :scope_type, :min_workers_number, :category)
    end
end
