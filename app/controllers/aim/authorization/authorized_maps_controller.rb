class Aim::Authorization::AuthorizedMapsController < ApplicationController
  before_action :set_aim_authorization_authorized_map, only: %i[ show edit update destroy ]

  # GET /aim/authorization/authorized_maps or /aim/authorization/authorized_maps.json
  def index
    @aim_authorization_authorized_maps = Aim::Authorization::AuthorizedMap.all
  end

  # GET /aim/authorization/authorized_maps/1 or /aim/authorization/authorized_maps/1.json
  def show
  end

  # GET /aim/authorization/authorized_maps/new
  def new
    @aim_authorization_authorized_map = Aim::Authorization::AuthorizedMap.new
  end

  # GET /aim/authorization/authorized_maps/1/edit
  def edit
  end

  # POST /aim/authorization/authorized_maps or /aim/authorization/authorized_maps.json
  def create
    @aim_authorization_authorized_map = Aim::Authorization::AuthorizedMap.new(aim_authorization_authorized_map_params)

    respond_to do |format|
      if @aim_authorization_authorized_map.save
        format.html { redirect_to aim_authorization_authorized_map_url(@aim_authorization_authorized_map), notice: "Authorized map was successfully created." }
        format.json { render :show, status: :created, location: @aim_authorization_authorized_map }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_authorization_authorized_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/authorization/authorized_maps/1 or /aim/authorization/authorized_maps/1.json
  def update
    respond_to do |format|
      if @aim_authorization_authorized_map.update(aim_authorization_authorized_map_params)
        format.html { redirect_to aim_authorization_authorized_map_url(@aim_authorization_authorized_map), notice: "Authorized map was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_authorization_authorized_map }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_authorization_authorized_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/authorization/authorized_maps/1 or /aim/authorization/authorized_maps/1.json
  def destroy
    @aim_authorization_authorized_map.destroy

    respond_to do |format|
      format.html { redirect_to aim_authorization_authorized_maps_url, notice: "Authorized map was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_authorization_authorized_map
      @aim_authorization_authorized_map = Aim::Authorization::AuthorizedMap.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_authorization_authorized_map_params
      params.require(:aim_authorization_authorized_map).permit(:request_id, :map_id, :state, :authorized_at, :created_at, :updated_at)
    end
end
