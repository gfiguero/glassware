class Authorization::RequestVehiclesController < ApplicationController
  before_action :set_authorization_request_vehicle, only: %i[ show edit update destroy ]

  # GET /authorization/request_vehicles or /authorization/request_vehicles.json
  def index
    @authorization_request_vehicles = Authorization::RequestVehicle.all
  end

  # GET /authorization/request_vehicles/1 or /authorization/request_vehicles/1.json
  def show
  end

  # GET /authorization/request_vehicles/new
  def new
    @authorization_request_vehicle = Authorization::RequestVehicle.new
  end

  # GET /authorization/request_vehicles/1/edit
  def edit
  end

  # POST /authorization/request_vehicles or /authorization/request_vehicles.json
  def create
    @authorization_request_vehicle = Authorization::RequestVehicle.new(authorization_request_vehicle_params)

    respond_to do |format|
      if @authorization_request_vehicle.save
        format.html { redirect_to authorization_request_vehicle_url(@authorization_request_vehicle), notice: "Request vehicle was successfully created." }
        format.json { render :show, status: :created, location: @authorization_request_vehicle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorization_request_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorization/request_vehicles/1 or /authorization/request_vehicles/1.json
  def update
    respond_to do |format|
      if @authorization_request_vehicle.update(authorization_request_vehicle_params)
        format.html { redirect_to authorization_request_vehicle_url(@authorization_request_vehicle), notice: "Request vehicle was successfully updated." }
        format.json { render :show, status: :ok, location: @authorization_request_vehicle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorization_request_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization/request_vehicles/1 or /authorization/request_vehicles/1.json
  def destroy
    @authorization_request_vehicle.destroy

    respond_to do |format|
      format.html { redirect_to authorization_request_vehicles_url, notice: "Request vehicle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorization_request_vehicle
      @authorization_request_vehicle = Authorization::RequestVehicle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorization_request_vehicle_params
      params.require(:authorization_request_vehicle).permit(:request_id, :vehicle_id, :created_at, :updated_at)
    end
end
