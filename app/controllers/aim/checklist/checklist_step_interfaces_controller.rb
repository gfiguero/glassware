class Aim::Checklist::ChecklistStepInterfacesController < ApplicationController
  before_action :set_aim_checklist_checklist_step_interface, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklist_step_interfaces or /aim/checklist/checklist_step_interfaces.json
  def index
    @aim_checklist_checklist_step_interfaces = Aim::Checklist::ChecklistStepInterface.all
  end

  # GET /aim/checklist/checklist_step_interfaces/1 or /aim/checklist/checklist_step_interfaces/1.json
  def show
  end

  # GET /aim/checklist/checklist_step_interfaces/new
  def new
    @aim_checklist_checklist_step_interface = Aim::Checklist::ChecklistStepInterface.new
  end

  # GET /aim/checklist/checklist_step_interfaces/1/edit
  def edit
  end

  # POST /aim/checklist/checklist_step_interfaces or /aim/checklist/checklist_step_interfaces.json
  def create
    @aim_checklist_checklist_step_interface = Aim::Checklist::ChecklistStepInterface.new(aim_checklist_checklist_step_interface_params)

    respond_to do |format|
      if @aim_checklist_checklist_step_interface.save
        format.html { redirect_to aim_checklist_checklist_step_interface_url(@aim_checklist_checklist_step_interface), notice: "Checklist step interface was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist_step_interface }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_step_interface.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklist_step_interfaces/1 or /aim/checklist/checklist_step_interfaces/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist_step_interface.update(aim_checklist_checklist_step_interface_params)
        format.html { redirect_to aim_checklist_checklist_step_interface_url(@aim_checklist_checklist_step_interface), notice: "Checklist step interface was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist_step_interface }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_step_interface.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklist_step_interfaces/1 or /aim/checklist/checklist_step_interfaces/1.json
  def destroy
    @aim_checklist_checklist_step_interface.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklist_step_interfaces_url, notice: "Checklist step interface was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist_step_interface
      @aim_checklist_checklist_step_interface = Aim::Checklist::ChecklistStepInterface.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_step_interface_params
      params.require(:aim_checklist_checklist_step_interface).permit(:checklist_section_interface_id, :name, :description, :comments_when_high_grade, :pictures_when_high_grade, :documents_when_high_grade, :has_grade, :low_grade, :incident_interface_id, :created_at, :updated_at, :required, :skippable, :grade_weight, :light_question, :comments_when_low_grade, :pictures_when_low_grade, :documents_when_low_grade, :parent_checklist_step_interface_id, :parent_checklist_grade_option_id, :default_grade, :default_checklist_grade_option_id, :rank, :deleted_at)
    end
end
