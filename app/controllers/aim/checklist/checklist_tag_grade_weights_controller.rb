class Aim::Checklist::ChecklistTagGradeWeightsController < ApplicationController
  before_action :set_aim_checklist_checklist_tag_grade_weight, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklist_tag_grade_weights or /aim/checklist/checklist_tag_grade_weights.json
  def index
    @aim_checklist_checklist_tag_grade_weights = Aim::Checklist::ChecklistTagGradeWeight.all
  end

  # GET /aim/checklist/checklist_tag_grade_weights/1 or /aim/checklist/checklist_tag_grade_weights/1.json
  def show
  end

  # GET /aim/checklist/checklist_tag_grade_weights/new
  def new
    @aim_checklist_checklist_tag_grade_weight = Aim::Checklist::ChecklistTagGradeWeight.new
  end

  # GET /aim/checklist/checklist_tag_grade_weights/1/edit
  def edit
  end

  # POST /aim/checklist/checklist_tag_grade_weights or /aim/checklist/checklist_tag_grade_weights.json
  def create
    @aim_checklist_checklist_tag_grade_weight = Aim::Checklist::ChecklistTagGradeWeight.new(aim_checklist_checklist_tag_grade_weight_params)

    respond_to do |format|
      if @aim_checklist_checklist_tag_grade_weight.save
        format.html { redirect_to aim_checklist_checklist_tag_grade_weight_url(@aim_checklist_checklist_tag_grade_weight), notice: "Checklist tag grade weight was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist_tag_grade_weight }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_tag_grade_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklist_tag_grade_weights/1 or /aim/checklist/checklist_tag_grade_weights/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist_tag_grade_weight.update(aim_checklist_checklist_tag_grade_weight_params)
        format.html { redirect_to aim_checklist_checklist_tag_grade_weight_url(@aim_checklist_checklist_tag_grade_weight), notice: "Checklist tag grade weight was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist_tag_grade_weight }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_tag_grade_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklist_tag_grade_weights/1 or /aim/checklist/checklist_tag_grade_weights/1.json
  def destroy
    @aim_checklist_checklist_tag_grade_weight.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklist_tag_grade_weights_url, notice: "Checklist tag grade weight was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist_tag_grade_weight
      @aim_checklist_checklist_tag_grade_weight = Aim::Checklist::ChecklistTagGradeWeight.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_tag_grade_weight_params
      params.require(:aim_checklist_checklist_tag_grade_weight).permit(:checklist_id, :tag_id, :grade_weight, :grade)
    end
end
