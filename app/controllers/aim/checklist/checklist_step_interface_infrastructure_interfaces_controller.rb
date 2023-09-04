class Aim::Checklist::ChecklistStepInterfaceInfrastructureInterfacesController < ApplicationController
  before_action :set_aim_checklist_checklist_step_interface_infrastructure_interface, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklist_step_interface_infrastructure_interfaces or /aim/checklist/checklist_step_interface_infrastructure_interfaces.json
  def index
    @aim_checklist_checklist_step_interface_infrastructure_interfaces = Aim::Checklist::ChecklistStepInterfaceInfrastructureInterface.all
  end

  # GET /aim/checklist/checklist_step_interface_infrastructure_interfaces/1 or /aim/checklist/checklist_step_interface_infrastructure_interfaces/1.json
  def show
  end

  # GET /aim/checklist/checklist_step_interface_infrastructure_interfaces/new
  def new
    @aim_checklist_checklist_step_interface_infrastructure_interface = Aim::Checklist::ChecklistStepInterfaceInfrastructureInterface.new
  end

  # GET /aim/checklist/checklist_step_interface_infrastructure_interfaces/1/edit
  def edit
  end

  # POST /aim/checklist/checklist_step_interface_infrastructure_interfaces or /aim/checklist/checklist_step_interface_infrastructure_interfaces.json
  def create
    @aim_checklist_checklist_step_interface_infrastructure_interface = Aim::Checklist::ChecklistStepInterfaceInfrastructureInterface.new(aim_checklist_checklist_step_interface_infrastructure_interface_params)

    respond_to do |format|
      if @aim_checklist_checklist_step_interface_infrastructure_interface.save
        format.html { redirect_to aim_checklist_checklist_step_interface_infrastructure_interface_url(@aim_checklist_checklist_step_interface_infrastructure_interface), notice: "Checklist step interface infrastructure interface was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist_step_interface_infrastructure_interface }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_step_interface_infrastructure_interface.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklist_step_interface_infrastructure_interfaces/1 or /aim/checklist/checklist_step_interface_infrastructure_interfaces/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist_step_interface_infrastructure_interface.update(aim_checklist_checklist_step_interface_infrastructure_interface_params)
        format.html { redirect_to aim_checklist_checklist_step_interface_infrastructure_interface_url(@aim_checklist_checklist_step_interface_infrastructure_interface), notice: "Checklist step interface infrastructure interface was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist_step_interface_infrastructure_interface }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_step_interface_infrastructure_interface.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklist_step_interface_infrastructure_interfaces/1 or /aim/checklist/checklist_step_interface_infrastructure_interfaces/1.json
  def destroy
    @aim_checklist_checklist_step_interface_infrastructure_interface.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklist_step_interface_infrastructure_interfaces_url, notice: "Checklist step interface infrastructure interface was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist_step_interface_infrastructure_interface
      @aim_checklist_checklist_step_interface_infrastructure_interface = Aim::Checklist::ChecklistStepInterfaceInfrastructureInterface.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_step_interface_infrastructure_interface_params
      params.require(:aim_checklist_checklist_step_interface_infrastructure_interface).permit(:checklist_step_interface_id, :infrastructure_interface_id, :created_at, :updated_at)
    end
end
