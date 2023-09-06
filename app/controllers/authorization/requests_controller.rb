class Authorization::RequestsController < ApplicationController
  before_action :set_authorization_request, only: %i[ show edit update destroy ]

  # GET /authorization/requests or /authorization/requests.json
  def index
    @authorization_requests = Authorization::Request.all
  end

  # GET /authorization/requests/1 or /authorization/requests/1.json
  def show
  end

  # GET /authorization/requests/new
  def new
    @authorization_request = Authorization::Request.new
  end

  # GET /authorization/requests/1/edit
  def edit
  end

  # POST /authorization/requests or /authorization/requests.json
  def create
    @authorization_request = Authorization::Request.new(authorization_request_params)

    respond_to do |format|
      if @authorization_request.save
        format.html { redirect_to authorization_request_url(@authorization_request), notice: "Request was successfully created." }
        format.json { render :show, status: :created, location: @authorization_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorization_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorization/requests/1 or /authorization/requests/1.json
  def update
    respond_to do |format|
      if @authorization_request.update(authorization_request_params)
        format.html { redirect_to authorization_request_url(@authorization_request), notice: "Request was successfully updated." }
        format.json { render :show, status: :ok, location: @authorization_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorization_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization/requests/1 or /authorization/requests/1.json
  def destroy
    @authorization_request.destroy

    respond_to do |format|
      format.html { redirect_to authorization_requests_url, notice: "Request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorization_request
      @authorization_request = Authorization::Request.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorization_request_params
      params.require(:authorization_request).permit(:requester_id, :request_type_id, :interest_point_id, :interest_point_type, :state, :from_time, :until_time, :from_time_num, :until_time_num, :created_at, :updated_at, :map_id, :requester_kind, :requester_role, :requester_comments, :supplier_comments, :comments, :supplier_id, :requester_identification, :requester_name, :requester_phone, :requester_email, :authorized_at, :for_mall, :payroll_workers_file_name, :payroll_workers_content_type, :payroll_workers_file_size, :payroll_workers_updated_at, :slug, :start_working_hour, :end_working_hour, :mixed, :requester_type, :deleted_at, :completion_time)
    end
end
