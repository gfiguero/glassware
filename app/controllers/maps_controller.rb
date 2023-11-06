class MapsController < ApplicationController
  include Pagy::Backend

  before_action :set_map, only: %i[ show edit update destroy ]
  before_action :set_maps, only: :index
  before_action :disabled_pagination
  after_action { pagy_headers_merge(@pagy) if @pagy }

  # GET /maps
  def index
    @pagy, @maps = pagy(@maps)

    respond_to do |format|
      format.html
      format.json
      format.turbo_stream
    end
  end

  # GET /maps/search.json
  def search
    @maps = params[:items].present? ? Map.new.filter_by_id(params[:items]) : Map.all

    respond_to do |format|
      format.json
      format.turbo_stream
    end
  end

  # GET /maps/1
  def show
  end

  # GET /maps/new
  def new
    @map = Map.new
  end

  # GET /maps/1/edit
  def edit
  end

  # POST /maps
  def create
    @map = Map.new(map_params)

    if @map.save
      redirect_to @map, notice: "Map was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /maps/1
  def update
    if @map.update(map_params)
      redirect_to @map, notice: "Map was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /maps/1
  def destroy
    @map.destroy!
    redirect_to maps_url, notice: "Map was successfully destroyed.", status: :see_other
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_map
    @map = Map.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def map_params
    params.require(:map).permit(:name, :top_left_x, :top_left_y, :max_zoom, :bottom_right_x, :max_resolution, :bottom_right_y, :stores_show_from_zoom, :features_radius, :range, :street, :street_number, :parent_id, :lft, :rgt, :depth, :kind, :alias, :created_at, :updated_at, :last_update, :last_change, :zoom_matrix, :adjustment_data, :map_radius, :map_latitude, :map_longitude, :time_between_notifications, :max_notifications_per_period, :notifications_time_period, :scaled_stores, :properties, :until_zoom, :real_min_zoom, :initial_zoom, :authorization_user_manual_file_name, :authorization_user_manual_content_type, :authorization_user_manual_file_size, :authorization_user_manual_updated_at, :loader_version, :tiles_version, :incident_positioning_system, :country_code, :region_code, :map_classification_id, :map_district_id, :map_orientation, :fusion_table_on_start, :time_zone, :sales_room_m2, :property_type, :cost_center, :show_custom_fields)
  end

  def set_maps
    @maps = if sort_params.present?
      Map.send(sort_scope(sort_params[:sort_column].to_s), sort_params[:sort_direction])
    else
      Map.send('sort_by_id')
    end

    filter_params.each { |attribute, value| @maps = @maps.send(filter_scope(attribute), value) } if filter_params.present?
  end

  def sort_params
    params.permit(:sort_column, :sort_direction)
  end

  def filter_params
    params.permit(:id, :name, :top_left_x, :top_left_y, :max_zoom, :bottom_right_x, :max_resolution, :bottom_right_y, :stores_show_from_zoom, :features_radius, :range, :street, :street_number, :parent_id, :lft, :rgt, :depth, :kind, :alias, :created_at, :updated_at, :last_update, :last_change, :zoom_matrix, :adjustment_data, :map_radius, :map_latitude, :map_longitude, :time_between_notifications, :max_notifications_per_period, :notifications_time_period, :scaled_stores, :properties, :until_zoom, :real_min_zoom, :initial_zoom, :authorization_user_manual_file_name, :authorization_user_manual_content_type, :authorization_user_manual_file_size, :authorization_user_manual_updated_at, :loader_version, :tiles_version, :incident_positioning_system, :country_code, :region_code, :map_classification_id, :map_district_id, :map_orientation, :fusion_table_on_start, :time_zone, :sales_room_m2, :property_type, :cost_center, :show_custom_fields).reject{|key,value| value.blank? }
  end

  def disabled_pagination
    return render json: Map.all if params[:items] == 'all'
  end
end
