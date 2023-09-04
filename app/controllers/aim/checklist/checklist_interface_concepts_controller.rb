class Aim::Checklist::ChecklistInterfaceConceptsController < ApplicationController
  before_action :set_aim_checklist_checklist_interface_concept, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklist_interface_concepts or /aim/checklist/checklist_interface_concepts.json
  def index
    @aim_checklist_checklist_interface_concepts = Aim::Checklist::ChecklistInterfaceConcept.all
  end

  # GET /aim/checklist/checklist_interface_concepts/1 or /aim/checklist/checklist_interface_concepts/1.json
  def show
  end

  # GET /aim/checklist/checklist_interface_concepts/new
  def new
    @aim_checklist_checklist_interface_concept = Aim::Checklist::ChecklistInterfaceConcept.new
  end

  # GET /aim/checklist/checklist_interface_concepts/1/edit
  def edit
  end

  # POST /aim/checklist/checklist_interface_concepts or /aim/checklist/checklist_interface_concepts.json
  def create
    @aim_checklist_checklist_interface_concept = Aim::Checklist::ChecklistInterfaceConcept.new(aim_checklist_checklist_interface_concept_params)

    respond_to do |format|
      if @aim_checklist_checklist_interface_concept.save
        format.html { redirect_to aim_checklist_checklist_interface_concept_url(@aim_checklist_checklist_interface_concept), notice: "Checklist interface concept was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist_interface_concept }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_interface_concept.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklist_interface_concepts/1 or /aim/checklist/checklist_interface_concepts/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist_interface_concept.update(aim_checklist_checklist_interface_concept_params)
        format.html { redirect_to aim_checklist_checklist_interface_concept_url(@aim_checklist_checklist_interface_concept), notice: "Checklist interface concept was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist_interface_concept }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_interface_concept.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklist_interface_concepts/1 or /aim/checklist/checklist_interface_concepts/1.json
  def destroy
    @aim_checklist_checklist_interface_concept.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklist_interface_concepts_url, notice: "Checklist interface concept was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist_interface_concept
      @aim_checklist_checklist_interface_concept = Aim::Checklist::ChecklistInterfaceConcept.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_interface_concept_params
      params.require(:aim_checklist_checklist_interface_concept).permit(:checklist_interface_id)
    end
end
