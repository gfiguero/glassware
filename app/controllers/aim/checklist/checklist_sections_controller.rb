class Aim::Checklist::ChecklistSectionsController < ApplicationController
  before_action :set_aim_checklist_checklist_section, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklist_sections or /aim/checklist/checklist_sections.json
  def index
    @aim_checklist_checklist_sections = Aim::Checklist::ChecklistSection.all
  end

  # GET /aim/checklist/checklist_sections/1 or /aim/checklist/checklist_sections/1.json
  def show
  end

  # GET /aim/checklist/checklist_sections/new
  def new
    @aim_checklist_checklist_section = Aim::Checklist::ChecklistSection.new
  end

  # GET /aim/checklist/checklist_sections/1/edit
  def edit
  end

  # POST /aim/checklist/checklist_sections or /aim/checklist/checklist_sections.json
  def create
    @aim_checklist_checklist_section = Aim::Checklist::ChecklistSection.new(aim_checklist_checklist_section_params)

    respond_to do |format|
      if @aim_checklist_checklist_section.save
        format.html { redirect_to aim_checklist_checklist_section_url(@aim_checklist_checklist_section), notice: "Checklist section was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist_section }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklist_sections/1 or /aim/checklist/checklist_sections/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist_section.update(aim_checklist_checklist_section_params)
        format.html { redirect_to aim_checklist_checklist_section_url(@aim_checklist_checklist_section), notice: "Checklist section was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist_section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklist_sections/1 or /aim/checklist/checklist_sections/1.json
  def destroy
    @aim_checklist_checklist_section.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklist_sections_url, notice: "Checklist section was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist_section
      @aim_checklist_checklist_section = Aim::Checklist::ChecklistSection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_section_params
      params.require(:aim_checklist_checklist_section).permit(:checklist_section_interface_id, :checklist_id, :grade, :grade_weight, :grade_weight_percentage, :skipped, :rank, :created_at, :updated_at)
    end
end
