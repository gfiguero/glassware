class Aim::Checklist::ChecklistCategoriesController < ApplicationController
  before_action :set_aim_checklist_checklist_category, only: %i[ show edit update destroy ]

  # GET /aim/checklist/checklist_categories or /aim/checklist/checklist_categories.json
  def index
    @aim_checklist_checklist_categories = Aim::Checklist::ChecklistCategory.all
  end

  # GET /aim/checklist/checklist_categories/1 or /aim/checklist/checklist_categories/1.json
  def show
  end

  # GET /aim/checklist/checklist_categories/new
  def new
    @aim_checklist_checklist_category = Aim::Checklist::ChecklistCategory.new
  end

  # GET /aim/checklist/checklist_categories/1/edit
  def edit
  end

  # POST /aim/checklist/checklist_categories or /aim/checklist/checklist_categories.json
  def create
    @aim_checklist_checklist_category = Aim::Checklist::ChecklistCategory.new(aim_checklist_checklist_category_params)

    respond_to do |format|
      if @aim_checklist_checklist_category.save
        format.html { redirect_to aim_checklist_checklist_category_url(@aim_checklist_checklist_category), notice: "Checklist category was successfully created." }
        format.json { render :show, status: :created, location: @aim_checklist_checklist_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aim/checklist/checklist_categories/1 or /aim/checklist/checklist_categories/1.json
  def update
    respond_to do |format|
      if @aim_checklist_checklist_category.update(aim_checklist_checklist_category_params)
        format.html { redirect_to aim_checklist_checklist_category_url(@aim_checklist_checklist_category), notice: "Checklist category was successfully updated." }
        format.json { render :show, status: :ok, location: @aim_checklist_checklist_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aim_checklist_checklist_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aim/checklist/checklist_categories/1 or /aim/checklist/checklist_categories/1.json
  def destroy
    @aim_checklist_checklist_category.destroy

    respond_to do |format|
      format.html { redirect_to aim_checklist_checklist_categories_url, notice: "Checklist category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim_checklist_checklist_category
      @aim_checklist_checklist_category = Aim::Checklist::ChecklistCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aim_checklist_checklist_category_params
      params.require(:aim_checklist_checklist_category).permit(:map_id, :name, :icon_file_name, :icon_content_type, :icon_file_size, :icon_updated_at, :created_at, :updated_at, :filterable_by_auditor, :filterable_by_supervisor)
    end
end
