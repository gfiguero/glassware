class Aim::Checklist::ChecklistInterfacesController < ApplicationController
  before_action :set_aim_checklist_checklist_interface, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklist_interfaces or /aim/checklist/checklist_interfaces.json
  def index
    @aim_checklist_checklist_interfaces = Aim::Checklist::ChecklistInterface.all
  end

  # GET /aim/checklist/checklist_interfaces/1 or /aim/checklist/checklist_interfaces/1.json
  def show
  end

  # GET /aim/checklist/checklist_interfaces/new
  def new
    @aim_checklist_checklist_interface = Aim::Checklist::ChecklistInterface.new
  end

  # GET /aim/checklist/checklist_interfaces/1/edit
  def edit
  end

  # POST /aim/checklist/checklist_interfaces or /aim/checklist/checklist_interfaces.json
  def create
    @aim_checklist_checklist_interface = Aim::Checklist::ChecklistInterface.new(aim_checklist_checklist_interface_params)

    respond_to do |format|
      if @aim_checklist_checklist_interface.save
        format.html { redirect_to aim_checklist_checklist_interface_url(@aim_checklist_checklist_interface), notice: "Checklist interface was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist_interface }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_interface.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklist_interfaces/1 or /aim/checklist/checklist_interfaces/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist_interface.update(aim_checklist_checklist_interface_params)
        format.html { redirect_to aim_checklist_checklist_interface_url(@aim_checklist_checklist_interface), notice: "Checklist interface was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist_interface }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_interface.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklist_interfaces/1 or /aim/checklist/checklist_interfaces/1.json
  def destroy
    @aim_checklist_checklist_interface.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklist_interfaces_url, notice: "Checklist interface was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist_interface
      @aim_checklist_checklist_interface = Aim::Checklist::ChecklistInterface.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_interface_params
      params.require(:aim_checklist_checklist_interface).permit(:name, :grade_min, :grade_max, :grade_interval, :is_for_store, :created_at, :updated_at, :icon_file_name, :icon_content_type, :icon_file_size, :icon_updated_at, :autogenerate_incident, :is_for_service, :is_for_infrastructure, :checklist_category_id, :deleted_at, :user_start_position, :user_finish_position, :expiration_time, :is_section_weight, :show_skip_steps, :show_section_of_skip_steps, :show_pdf_skip_steps, :show_pdf_section_of_skip_steps, :aim_concept_id, :add_photo_from_gallery, :show_pdf_unsuccess_step_only)
    end
end
