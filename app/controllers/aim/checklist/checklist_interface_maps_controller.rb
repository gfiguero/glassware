class Aim::Checklist::ChecklistInterfaceMapsController < ApplicationController
  before_action :set_aim_checklist_checklist_interface_map, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklist_interface_maps or /aim/checklist/checklist_interface_maps.json
  def index
    @aim_checklist_checklist_interface_maps = Aim::Checklist::ChecklistInterfaceMap.all
  end

  # GET /aim/checklist/checklist_interface_maps/1 or /aim/checklist/checklist_interface_maps/1.json
  def show
  end

  # GET /aim/checklist/checklist_interface_maps/new
  def new
    @aim_checklist_checklist_interface_map = Aim::Checklist::ChecklistInterfaceMap.new
  end

  # GET /aim/checklist/checklist_interface_maps/1/edit
  def edit
  end

  # POST /aim/checklist/checklist_interface_maps or /aim/checklist/checklist_interface_maps.json
  def create
    @aim_checklist_checklist_interface_map = Aim::Checklist::ChecklistInterfaceMap.new(aim_checklist_checklist_interface_map_params)

    respond_to do |format|
      if @aim_checklist_checklist_interface_map.save
        format.html { redirect_to aim_checklist_checklist_interface_map_url(@aim_checklist_checklist_interface_map), notice: "Checklist interface map was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist_interface_map }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_interface_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklist_interface_maps/1 or /aim/checklist/checklist_interface_maps/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist_interface_map.update(aim_checklist_checklist_interface_map_params)
        format.html { redirect_to aim_checklist_checklist_interface_map_url(@aim_checklist_checklist_interface_map), notice: "Checklist interface map was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist_interface_map }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_interface_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklist_interface_maps/1 or /aim/checklist/checklist_interface_maps/1.json
  def destroy
    @aim_checklist_checklist_interface_map.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklist_interface_maps_url, notice: "Checklist interface map was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist_interface_map
      @aim_checklist_checklist_interface_map = Aim::Checklist::ChecklistInterfaceMap.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_interface_map_params
      params.require(:aim_checklist_checklist_interface_map).permit(:checklist_interface_id, :map_id)
    end
end
