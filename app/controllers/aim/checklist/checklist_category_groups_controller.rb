class Aim::Checklist::ChecklistCategoryGroupsController < ApplicationController
  before_action :set_aim_checklist_checklist_category_group, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklist_category_groups or /aim/checklist/checklist_category_groups.json
  def index
    @aim_checklist_checklist_category_groups = Aim::Checklist::ChecklistCategoryGroup.all
  end

  # GET /aim/checklist/checklist_category_groups/1 or /aim/checklist/checklist_category_groups/1.json
  def show
  end

  # GET /aim/checklist/checklist_category_groups/new
  def new
    @aim_checklist_checklist_category_group = Aim::Checklist::ChecklistCategoryGroup.new
  end

  # GET /aim/checklist/checklist_category_groups/1/edit
  def edit
  end

  # POST /aim/checklist/checklist_category_groups or /aim/checklist/checklist_category_groups.json
  def create
    @aim_checklist_checklist_category_group = Aim::Checklist::ChecklistCategoryGroup.new(aim_checklist_checklist_category_group_params)

    respond_to do |format|
      if @aim_checklist_checklist_category_group.save
        format.html { redirect_to aim_checklist_checklist_category_group_url(@aim_checklist_checklist_category_group), notice: "Checklist category group was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist_category_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_category_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklist_category_groups/1 or /aim/checklist/checklist_category_groups/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist_category_group.update(aim_checklist_checklist_category_group_params)
        format.html { redirect_to aim_checklist_checklist_category_group_url(@aim_checklist_checklist_category_group), notice: "Checklist category group was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist_category_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_category_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklist_category_groups/1 or /aim/checklist/checklist_category_groups/1.json
  def destroy
    @aim_checklist_checklist_category_group.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklist_category_groups_url, notice: "Checklist category group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist_category_group
      @aim_checklist_checklist_category_group = Aim::Checklist::ChecklistCategoryGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_category_group_params
      params.require(:aim_checklist_checklist_category_group).permit(:checklist_category_id, :created_at, :updated_at, :relation_kind)
    end
end
