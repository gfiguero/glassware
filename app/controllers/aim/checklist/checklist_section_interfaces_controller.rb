class Aim::Checklist::ChecklistSectionInterfacesController < ApplicationController
  before_action :set_aim_checklist_checklist_section_interface, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklist_section_interfaces or /aim/checklist/checklist_section_interfaces.json
  def index
    @aim_checklist_checklist_section_interfaces = Aim::Checklist::ChecklistSectionInterface.all
  end

  # GET /aim/checklist/checklist_section_interfaces/1 or /aim/checklist/checklist_section_interfaces/1.json
  def show
  end

  # GET /aim/checklist/checklist_section_interfaces/new
  def new
    @aim_checklist_checklist_section_interface = Aim::Checklist::ChecklistSectionInterface.new
  end

  # GET /aim/checklist/checklist_section_interfaces/1/edit
  def edit
  end

  # POST /aim/checklist/checklist_section_interfaces or /aim/checklist/checklist_section_interfaces.json
  def create
    @aim_checklist_checklist_section_interface = Aim::Checklist::ChecklistSectionInterface.new(aim_checklist_checklist_section_interface_params)

    respond_to do |format|
      if @aim_checklist_checklist_section_interface.save
        format.html { redirect_to aim_checklist_checklist_section_interface_url(@aim_checklist_checklist_section_interface), notice: "Checklist section interface was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist_section_interface }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_section_interface.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklist_section_interfaces/1 or /aim/checklist/checklist_section_interfaces/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist_section_interface.update(aim_checklist_checklist_section_interface_params)
        format.html { redirect_to aim_checklist_checklist_section_interface_url(@aim_checklist_checklist_section_interface), notice: "Checklist section interface was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist_section_interface }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_section_interface.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklist_section_interfaces/1 or /aim/checklist/checklist_section_interfaces/1.json
  def destroy
    @aim_checklist_checklist_section_interface.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklist_section_interfaces_url, notice: "Checklist section interface was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist_section_interface
      @aim_checklist_checklist_section_interface = Aim::Checklist::ChecklistSectionInterface.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_section_interface_params
      params.require(:aim_checklist_checklist_section_interface).permit(:checklist_interface_id, :name, :grade_weight, :description, :rank, :deleted_at, :created_at, :updated_at)
    end
end
