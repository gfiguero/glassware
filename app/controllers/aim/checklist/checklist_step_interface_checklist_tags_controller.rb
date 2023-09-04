class Aim::Checklist::ChecklistStepInterfaceChecklistTagsController < ApplicationController
  before_action :set_aim_checklist_checklist_step_interface_checklist_tag, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklist_step_interface_checklist_tags or /aim/checklist/checklist_step_interface_checklist_tags.json
  def index
    @aim_checklist_checklist_step_interface_checklist_tags = Aim::Checklist::ChecklistStepInterfaceChecklistTag.all
  end

  # GET /aim/checklist/checklist_step_interface_checklist_tags/1 or /aim/checklist/checklist_step_interface_checklist_tags/1.json
  def show
  end

  # GET /aim/checklist/checklist_step_interface_checklist_tags/new
  def new
    @aim_checklist_checklist_step_interface_checklist_tag = Aim::Checklist::ChecklistStepInterfaceChecklistTag.new
  end

  # GET /aim/checklist/checklist_step_interface_checklist_tags/1/edit
  def edit
  end

  # POST /aim/checklist/checklist_step_interface_checklist_tags or /aim/checklist/checklist_step_interface_checklist_tags.json
  def create
    @aim_checklist_checklist_step_interface_checklist_tag = Aim::Checklist::ChecklistStepInterfaceChecklistTag.new(aim_checklist_checklist_step_interface_checklist_tag_params)

    respond_to do |format|
      if @aim_checklist_checklist_step_interface_checklist_tag.save
        format.html { redirect_to aim_checklist_checklist_step_interface_checklist_tag_url(@aim_checklist_checklist_step_interface_checklist_tag), notice: "Checklist step interface checklist tag was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist_step_interface_checklist_tag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_step_interface_checklist_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklist_step_interface_checklist_tags/1 or /aim/checklist/checklist_step_interface_checklist_tags/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist_step_interface_checklist_tag.update(aim_checklist_checklist_step_interface_checklist_tag_params)
        format.html { redirect_to aim_checklist_checklist_step_interface_checklist_tag_url(@aim_checklist_checklist_step_interface_checklist_tag), notice: "Checklist step interface checklist tag was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist_step_interface_checklist_tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_step_interface_checklist_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklist_step_interface_checklist_tags/1 or /aim/checklist/checklist_step_interface_checklist_tags/1.json
  def destroy
    @aim_checklist_checklist_step_interface_checklist_tag.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklist_step_interface_checklist_tags_url, notice: "Checklist step interface checklist tag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist_step_interface_checklist_tag
      @aim_checklist_checklist_step_interface_checklist_tag = Aim::Checklist::ChecklistStepInterfaceChecklistTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_step_interface_checklist_tag_params
      params.require(:aim_checklist_checklist_step_interface_checklist_tag).permit(:checklist_step_interface_id, :checklist_tag_id, :created_at, :updated_at, :grade_weight)
    end
end
