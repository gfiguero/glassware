class Authorization::RequestMapsController < ApplicationController
  before_action :set_authorization_request_map, only: %i[ show edit update destroy ]

  # GET /authorization/request_maps or /authorization/request_maps.json
  def index
    @authorization_request_maps = Authorization::RequestMap.all
  end

  # GET /authorization/request_maps/1 or /authorization/request_maps/1.json
  def show
  end

  # GET /authorization/request_maps/new
  def new
    @authorization_request_map = Authorization::RequestMap.new
  end

  # GET /authorization/request_maps/1/edit
  def edit
  end

  # POST /authorization/request_maps or /authorization/request_maps.json
  def create
    @authorization_request_map = Authorization::RequestMap.new(authorization_request_map_params)

    respond_to do |format|
      if @authorization_request_map.save
        format.html { redirect_to authorization_request_map_url(@authorization_request_map), notice: "Request map was successfully created." }
        format.json { render :show, status: :created, location: @authorization_request_map }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorization_request_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorization/request_maps/1 or /authorization/request_maps/1.json
  def update
    respond_to do |format|
      if @authorization_request_map.update(authorization_request_map_params)
        format.html { redirect_to authorization_request_map_url(@authorization_request_map), notice: "Request map was successfully updated." }
        format.json { render :show, status: :ok, location: @authorization_request_map }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorization_request_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization/request_maps/1 or /authorization/request_maps/1.json
  def destroy
    @authorization_request_map.destroy

    respond_to do |format|
      format.html { redirect_to authorization_request_maps_url, notice: "Request map was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorization_request_map
      @authorization_request_map = Authorization::RequestMap.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorization_request_map_params
      params.require(:authorization_request_map).permit(:map_id, :request_id, :created_at, :updated_at)
    end
end
