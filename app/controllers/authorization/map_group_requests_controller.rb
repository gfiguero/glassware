class Authorization::MapGroupRequestsController < ApplicationController
  before_action :set_authorization_map_group_request, only: %i[ show edit update destroy ]

  # GET /authorization/map_group_requests or /authorization/map_group_requests.json
  def index
    @authorization_map_group_requests = Authorization::MapGroupRequest.all
  end

  # GET /authorization/map_group_requests/1 or /authorization/map_group_requests/1.json
  def show
  end

  # GET /authorization/map_group_requests/new
  def new
    @authorization_map_group_request = Authorization::MapGroupRequest.new
  end

  # GET /authorization/map_group_requests/1/edit
  def edit
  end

  # POST /authorization/map_group_requests or /authorization/map_group_requests.json
  def create
    @authorization_map_group_request = Authorization::MapGroupRequest.new(authorization_map_group_request_params)

    respond_to do |format|
      if @authorization_map_group_request.save
        format.html { redirect_to authorization_map_group_request_url(@authorization_map_group_request), notice: "Map group request was successfully created." }
        format.json { render :show, status: :created, location: @authorization_map_group_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorization_map_group_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorization/map_group_requests/1 or /authorization/map_group_requests/1.json
  def update
    respond_to do |format|
      if @authorization_map_group_request.update(authorization_map_group_request_params)
        format.html { redirect_to authorization_map_group_request_url(@authorization_map_group_request), notice: "Map group request was successfully updated." }
        format.json { render :show, status: :ok, location: @authorization_map_group_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorization_map_group_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization/map_group_requests/1 or /authorization/map_group_requests/1.json
  def destroy
    @authorization_map_group_request.destroy

    respond_to do |format|
      format.html { redirect_to authorization_map_group_requests_url, notice: "Map group request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorization_map_group_request
      @authorization_map_group_request = Authorization::MapGroupRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorization_map_group_request_params
      params.require(:authorization_map_group_request).permit(:map_id, :group_id, :request_id, :authorizer_id, :state, :authorized_at, :message, :created_at, :updated_at, :slug)
    end
end
