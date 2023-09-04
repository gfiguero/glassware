class Aim::Core::MapsController < ApplicationController
  before_action :set_aim_core_map, only: %i[ show edit update destroy ]

  # GET /aim/core/maps or /aim/core/maps.json
  def index
    @aim_core_maps = Aim::Core::Map.all
  end

  # GET /aim/core/maps/1 or /aim/core/maps/1.json
  def show
  end

  # GET /aim/core/maps/new
  def new
    @aim_core_map = Aim::Core::Map.new
  end

  # GET /aim/core/maps/1/edit
  def edit
  end

  # POST /aim/core/maps or /aim/core/maps.json
  def create
    @aim_core_map = Aim::Core::Map.new(aim_core_map_params)

    respond_to do |format|
      if @aim_core_map.save
        format.html { redirect_to aim_core_map_url(@aim_core_map), notice: "Map was successfully created." }
        format.json { render :show, status: :created, location: @aim_core_map }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_core_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/core/maps/1 or /aim/core/maps/1.json
  def update
    respond_to do |format|
      if @aim_core_map.update(aim_core_map_params)
        format.html { redirect_to aim_core_map_url(@aim_core_map), notice: "Map was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_core_map }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_core_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/core/maps/1 or /aim/core/maps/1.json
  def destroy
    @aim_core_map.destroy

    respond_to do |format|
      format.html { redirect_to aim_core_maps_url, notice: "Map was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_core_map
      @aim_core_map = Aim::Core::Map.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_core_map_params
      params.require(:aim_core_map).permit(:name, :top_left_x, :top_left_y, :max_zoom, :bottom_right_x, :max_resolution, :bottom_right_y, :stores_show_from_zoom, :features_radius, :range, :street, :street_number, :parent_id, :lft, :rgt, :depth, :kind, :alias, :created_at, :updated_at, :last_update, :last_change, :zoom_matrix, :adjustment_data, :map_radius, :map_latitude, :map_longitude, :time_between_notifications, :max_notifications_per_period, :notifications_time_period, :scaled_stores, :properties, :until_zoom, :real_min_zoom, :initial_zoom, :authorization_user_manual_file_name, :authorization_user_manual_content_type, :authorization_user_manual_file_size, :authorization_user_manual_updated_at, :loader_version, :tiles_version, :incident_positioning_system, :country_code, :region_code, :map_classification_id, :map_district_id, :map_orientation, :fusion_table_on_start, :time_zone, :deleted_at, :sales_room_m2, :property_type, :cost_center, :show_custom_fields)
    end
end
