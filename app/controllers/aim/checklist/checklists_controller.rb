class Aim::Checklist::ChecklistsController < ApplicationController
  before_action :set_aim_checklist_checklist, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklists or /aim/checklist/checklists.json
  def index
    @aim_checklist_checklists = Aim::Checklist::Checklist.all
  end

  # GET /aim/checklist/checklists/1 or /aim/checklist/checklists/1.json
  def show
  end

  # GET /aim/checklist/checklists/new
  def new
    @aim_checklist_checklist = Aim::Checklist::Checklist.new
  end

  # GET /aim/checklist/checklists/1/edit
  def edit
  end

  # POST /aim/checklist/checklists or /aim/checklist/checklists.json
  def create
    @aim_checklist_checklist = Aim::Checklist::Checklist.new(aim_checklist_checklist_params)

    respond_to do |format|
      if @aim_checklist_checklist.save
        format.html { redirect_to aim_checklist_checklist_url(@aim_checklist_checklist), notice: "Checklist was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklists/1 or /aim/checklist/checklists/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist.update(aim_checklist_checklist_params)
        format.html { redirect_to aim_checklist_checklist_url(@aim_checklist_checklist), notice: "Checklist was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklists/1 or /aim/checklist/checklists/1.json
  def destroy
    @aim_checklist_checklist.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklists_url, notice: "Checklist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist
      @aim_checklist_checklist = Aim::Checklist::Checklist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_params
      params.require(:aim_checklist_checklist).permit(:checklist_interface_id, :map_id, :store_id, :user_id, :global_grade, :started_at, :created_at, :updated_at, :finished_at, :service_id, :infrastructure_id, :slug, :user_start_position, :user_finish_position, :grade_min, :grade_max)
    end
end
