class Aim::Checklist::ChecklistGradeOptionsController < ApplicationController
  before_action :set_aim_checklist_checklist_grade_option, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklist_grade_options or /aim/checklist/checklist_grade_options.json
  def index
    @aim_checklist_checklist_grade_options = Aim::Checklist::ChecklistGradeOption.all
  end

  # GET /aim/checklist/checklist_grade_options/1 or /aim/checklist/checklist_grade_options/1.json
  def show
  end

  # GET /aim/checklist/checklist_grade_options/new
  def new
    @aim_checklist_checklist_grade_option = Aim::Checklist::ChecklistGradeOption.new
  end

  # GET /aim/checklist/checklist_grade_options/1/edit
  def edit
  end

  # POST /aim/checklist/checklist_grade_options or /aim/checklist/checklist_grade_options.json
  def create
    @aim_checklist_checklist_grade_option = Aim::Checklist::ChecklistGradeOption.new(aim_checklist_checklist_grade_option_params)

    respond_to do |format|
      if @aim_checklist_checklist_grade_option.save
        format.html { redirect_to aim_checklist_checklist_grade_option_url(@aim_checklist_checklist_grade_option), notice: "Checklist grade option was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist_grade_option }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_grade_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklist_grade_options/1 or /aim/checklist/checklist_grade_options/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist_grade_option.update(aim_checklist_checklist_grade_option_params)
        format.html { redirect_to aim_checklist_checklist_grade_option_url(@aim_checklist_checklist_grade_option), notice: "Checklist grade option was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist_grade_option }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_grade_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklist_grade_options/1 or /aim/checklist/checklist_grade_options/1.json
  def destroy
    @aim_checklist_checklist_grade_option.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklist_grade_options_url, notice: "Checklist grade option was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist_grade_option
      @aim_checklist_checklist_grade_option = Aim::Checklist::ChecklistGradeOption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_grade_option_params
      params.require(:aim_checklist_checklist_grade_option).permit(:checklist_step_interface_id, :name, :grade, :incident_interface_id, :created_at, :updated_at, :comments, :pictures, :documents, :deleted_at, :default_tag_for_incident_id)
    end
end
