class Aim::Checklist::ChecklistTagsController < ApplicationController
  before_action :set_aim_checklist_checklist_tag, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklist_tags or /aim/checklist/checklist_tags.json
  def index
    @aim_checklist_checklist_tags = Aim::Checklist::ChecklistTag.all
  end

  # GET /aim/checklist/checklist_tags/1 or /aim/checklist/checklist_tags/1.json
  def show
  end

  # GET /aim/checklist/checklist_tags/new
  def new
    @aim_checklist_checklist_tag = Aim::Checklist::ChecklistTag.new
  end

  # GET /aim/checklist/checklist_tags/1/edit
  def edit
  end

  # POST /aim/checklist/checklist_tags or /aim/checklist/checklist_tags.json
  def create
    @aim_checklist_checklist_tag = Aim::Checklist::ChecklistTag.new(aim_checklist_checklist_tag_params)

    respond_to do |format|
      if @aim_checklist_checklist_tag.save
        format.html { redirect_to aim_checklist_checklist_tag_url(@aim_checklist_checklist_tag), notice: "Checklist tag was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist_tag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklist_tags/1 or /aim/checklist/checklist_tags/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist_tag.update(aim_checklist_checklist_tag_params)
        format.html { redirect_to aim_checklist_checklist_tag_url(@aim_checklist_checklist_tag), notice: "Checklist tag was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist_tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklist_tags/1 or /aim/checklist/checklist_tags/1.json
  def destroy
    @aim_checklist_checklist_tag.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklist_tags_url, notice: "Checklist tag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist_tag
      @aim_checklist_checklist_tag = Aim::Checklist::ChecklistTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_tag_params
      params.require(:aim_checklist_checklist_tag).permit(:checklist_interface_id, :name, :created_at, :updated_at, :deleted_at, :chosen_grade_option_name, :override_grade, :override_checklist_tag_id, :skipped, :tag_type, :grade_weight, :rank, :aim_concept_id)
    end
end
