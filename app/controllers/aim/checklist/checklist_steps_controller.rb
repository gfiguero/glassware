class Aim::Checklist::ChecklistStepsController < ApplicationController
  before_action :set_aim_checklist_checklist_step, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklist_steps or /aim/checklist/checklist_steps.json
  def index
    @aim_checklist_checklist_steps = Aim::Checklist::ChecklistStep.all
  end

  # GET /aim/checklist/checklist_steps/1 or /aim/checklist/checklist_steps/1.json
  def show
  end

  # GET /aim/checklist/checklist_steps/new
  def new
    @aim_checklist_checklist_step = Aim::Checklist::ChecklistStep.new
  end

  # GET /aim/checklist/checklist_steps/1/edit
  def edit
  end

  # POST /aim/checklist/checklist_steps or /aim/checklist/checklist_steps.json
  def create
    @aim_checklist_checklist_step = Aim::Checklist::ChecklistStep.new(aim_checklist_checklist_step_params)

    respond_to do |format|
      if @aim_checklist_checklist_step.save
        format.html { redirect_to aim_checklist_checklist_step_url(@aim_checklist_checklist_step), notice: "Checklist step was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist_step }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklist_steps/1 or /aim/checklist/checklist_steps/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist_step.update(aim_checklist_checklist_step_params)
        format.html { redirect_to aim_checklist_checklist_step_url(@aim_checklist_checklist_step), notice: "Checklist step was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist_step }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklist_steps/1 or /aim/checklist/checklist_steps/1.json
  def destroy
    @aim_checklist_checklist_step.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklist_steps_url, notice: "Checklist step was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist_step
      @aim_checklist_checklist_step = Aim::Checklist::ChecklistStep.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_step_params
      params.require(:aim_checklist_checklist_step).permit(:checklist_step_interface_id, :checklist_id, :checklist_grade_option_id, :comments, :grade, :created_at, :updated_at, :answered_at, :skipped, :incident_slug, :infrastructure_id, :forced_grade, :grade_weight, :slug, :grade_weight_percentage, :checklist_section_id, :absolute_grade_weight_percentage, :absolute_grade_percentage)
    end
end
