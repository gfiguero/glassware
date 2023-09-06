class Aim::Authorization::GroupRequestsController < ApplicationController
  before_action :set_aim_authorization_group_request, only: %i[ show edit update destroy ]

  # GET /aim/authorization/group_requests or /aim/authorization/group_requests.json
  def index
    @aim_authorization_group_requests = Aim::Authorization::GroupRequest.all
  end

  # GET /aim/authorization/group_requests/1 or /aim/authorization/group_requests/1.json
  def show
  end

  # GET /aim/authorization/group_requests/new
  def new
    @aim_authorization_group_request = Aim::Authorization::GroupRequest.new
  end

  # GET /aim/authorization/group_requests/1/edit
  def edit
  end

  # POST /aim/authorization/group_requests or /aim/authorization/group_requests.json
  def create
    @aim_authorization_group_request = Aim::Authorization::GroupRequest.new(aim_authorization_group_request_params)

    respond_to do |format|
      if @aim_authorization_group_request.save
        format.html { redirect_to aim_authorization_group_request_url(@aim_authorization_group_request), notice: "Group request was successfully created." }
        format.json { render :show, status: :created, location: @aim_authorization_group_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_authorization_group_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/authorization/group_requests/1 or /aim/authorization/group_requests/1.json
  def update
    respond_to do |format|
      if @aim_authorization_group_request.update(aim_authorization_group_request_params)
        format.html { redirect_to aim_authorization_group_request_url(@aim_authorization_group_request), notice: "Group request was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_authorization_group_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_authorization_group_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/authorization/group_requests/1 or /aim/authorization/group_requests/1.json
  def destroy
    @aim_authorization_group_request.destroy

    respond_to do |format|
      format.html { redirect_to aim_authorization_group_requests_url, notice: "Group request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_authorization_group_request
      @aim_authorization_group_request = Aim::Authorization::GroupRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_authorization_group_request_params
      params.require(:aim_authorization_group_request).permit(:request_id, :authorizer_id, :group_id, :state, :created_at, :updated_at, :authorized_at, :message)
    end
end
